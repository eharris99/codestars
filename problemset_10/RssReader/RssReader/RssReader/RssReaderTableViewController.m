//
//  RssReaderTableViewController.m
//  RssReader
//
//  Created by Elise Harris on 10/12/15.
//  Copyright (c) 2015 ech. All rights reserved.
//

#import "RssReaderTableViewController.h"
#import "RssItem.h"

@interface RssReaderTableViewController ()
{
    NSXMLParser *rssParser;
    NSMutableArray *rssItems;
    NSMutableString *title, *link, *description, *pubDate;
    NSString *currentElement;
    RssItem *currentRssItem;
}
@end

@implementation RssReaderTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    rssItems = [[NSMutableArray alloc]init];
    NSURL *url = [NSURL URLWithString:@"http://images.apple.com/main/rss/hotnews/hotnews.rss"];
    
    rssParser = [[NSXMLParser alloc]initWithContentsOfURL:url];
    
    [rssParser setDelegate:self];
    [rssParser parse];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
//    return 0;
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    
    return rssItems.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell...
    RssItem *item = [rssItems objectAtIndex:indexPath.row];
    cell.textLabel.text = item.title;
    cell.detailTextLabel.text = item.pubDate;
    
    return cell;
}



-(void) parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict {
    currentElement = elementName;
    
    if ([currentElement isEqualToString:@"item"]) {
        RssItem *rssItem = [[RssItem alloc]init];
        currentRssItem = rssItem;
        
        title = [[NSMutableString alloc] init];
        link = [[NSMutableString alloc] init];
        
        description = [[NSMutableString alloc] init];
        pubDate = [[NSMutableString alloc] init];
    }
}

-(void) parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
    if ([currentElement isEqualToString:@"title"]) {
        [title appendString:string];
    }else if ([currentElement isEqualToString:@"link"]) {
        [link appendString:string];
        
    } else if ([currentElement isEqualToString:@"description"]) {
        [description appendString:string];
    } else if ([currentElement isEqualToString:@"pubDate"]) {
        [pubDate appendString:string];
    }
}

-(void) parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName{
    if ([elementName isEqualToString:@"item"]) {
        currentRssItem.title = [title stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet];
        currentRssItem.link = [link stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet];
        currentRssItem.contentDescription = [description stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet];
        currentRssItem.pubDate = [pubDate stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet];
        
        [rssItems addObject:currentRssItem];
    }
}

-(void)parserDidEndDocument:(NSXMLParser *)parser {
    [self.tableView reloadData];
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([[segue identifier] isEqualToString:@"showWebPage"]) {
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        RssItem *item = [rssItems objectAtIndex:indexPath.row];
        [[segue destinationViewController] setLink:item.link];
    }
}


@end
