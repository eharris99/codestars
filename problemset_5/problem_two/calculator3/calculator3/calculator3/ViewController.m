//
//  ViewController.m
//  calculator3
//
//  Created by Elise Harris on 8/29/15.
//  Copyright (c) 2015 ech. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


-(IBAction)Number1:(id)sender{
    
    SelectNumber=SelectNumber*10;
    SelectNumber=SelectNumber+1;
    self.display.text= [NSString stringWithFormat:@"%i",SelectNumber];
}
-(IBAction)Number2:(id)sender{
    SelectNumber=SelectNumber*10;
    SelectNumber=SelectNumber+2;
    self.display.text= [NSString stringWithFormat:@"%i",SelectNumber];
    
}
-(IBAction)Number3:(id)sender{
    
    SelectNumber=SelectNumber*10;
    SelectNumber=SelectNumber+3;
    self.display.text= [NSString stringWithFormat:@"%i",SelectNumber];
    
}
-(IBAction)Number4:(id)sender{
    SelectNumber=SelectNumber*10;
    SelectNumber=SelectNumber+4;
    self.display.text= [NSString stringWithFormat:@"%i",SelectNumber];
}
-(IBAction)Number5:(id)sender{
    SelectNumber=SelectNumber*10;
    SelectNumber=SelectNumber+5;
    self.display.text= [NSString stringWithFormat:@"%i",SelectNumber];
    
}
-(IBAction)Number6:(id)sender{
    SelectNumber=SelectNumber*10;
    SelectNumber=SelectNumber+6;
    self.display.text= [NSString stringWithFormat:@"%i",SelectNumber];
    
}
-(IBAction)Number7:(id)sender{
    SelectNumber=SelectNumber*10;
    SelectNumber=SelectNumber+7;
    self.display.text= [NSString stringWithFormat:@"%i",SelectNumber];
}
-(IBAction)Number8:(id)sender{
    SelectNumber=SelectNumber*10;
    SelectNumber=SelectNumber+8;
    self.display.text= [NSString stringWithFormat:@"%i",SelectNumber];
    
}
-(IBAction)Number9:(id)sender{
    
    SelectNumber=SelectNumber*10;
    SelectNumber=SelectNumber+9;
    self.display.text= [NSString stringWithFormat:@"%i",SelectNumber];
}
-(IBAction)Number0:(id)sender{
    SelectNumber=SelectNumber*10;
    SelectNumber=SelectNumber+0;
    self.display.text= [NSString stringWithFormat:@"%i",SelectNumber];
}
-(IBAction)Times:(id)sender{
    
    if (RunningTotal==0){
        RunningTotal=SelectNumber;
    }
    else {
        switch (Method) {
            case 1:
                RunningTotal=RunningTotal* SelectNumber;
                break;
            case 2:
                RunningTotal = RunningTotal /SelectNumber;
                break;
            case 3:
                RunningTotal=RunningTotal-SelectNumber;
                break;
            case 4:
                RunningTotal=RunningTotal + SelectNumber;
                break;
            default:
                break;
        }
    }
    Method=1;
    SelectNumber=0;
    
    
}
-(IBAction)Divide:(id)sender{
    if (RunningTotal==0){
        RunningTotal=SelectNumber;
    }
    else {
        switch (Method) {
            case 1:
                RunningTotal=RunningTotal* SelectNumber;
                break;
            case 2:
                RunningTotal = RunningTotal /SelectNumber;
                break;
            case 3:
                RunningTotal=RunningTotal-SelectNumber;
                break;
            case 4:
                RunningTotal=RunningTotal + SelectNumber;
                break;
            default:
                break;
        }
    }
    
    Method=2;
    SelectNumber=0;
}
-(IBAction)Subtract:(id)sender{
    if (RunningTotal==0){
        RunningTotal=SelectNumber;
    }
    else {
        switch (Method) {
            case 1:
                RunningTotal=RunningTotal* SelectNumber;
                break;
            case 2:
                RunningTotal = RunningTotal /SelectNumber;
                break;
            case 3:
                RunningTotal=RunningTotal-SelectNumber;
                break;
            case 4:
                RunningTotal=RunningTotal + SelectNumber;
                break;
            default:
                break;
        }
    }
    
    Method=3;
    SelectNumber=0;
}
-(IBAction)Plus:(id)sender{
    
    if (RunningTotal==0){
        RunningTotal=SelectNumber;
    }
    else {
        switch (Method) {
            case 1:
                RunningTotal=RunningTotal* SelectNumber;
                break;
            case 2:
                RunningTotal = RunningTotal /SelectNumber;
                break;
            case 3:
                RunningTotal=RunningTotal-SelectNumber;
                break;
            case 4:
                RunningTotal=RunningTotal + SelectNumber;
                break;
            default:
                break;
        }
    }
    
    
    Method=4;
    SelectNumber=0;
}
-(IBAction)Equals:(id)sender{
    
    if (RunningTotal==0){
        RunningTotal=SelectNumber;
    }
    else {
        switch (Method) {
            case 1:
                RunningTotal=RunningTotal* SelectNumber;
                break;
            case 2:
                RunningTotal = RunningTotal /SelectNumber;
                break;
            case 3:
                RunningTotal-=SelectNumber;
                break;
            case 4:
                RunningTotal+= SelectNumber;
                break;
            default:
                break;
        }
    }
    Method=0;
    SelectNumber=0;
    self.display.text=[NSString stringWithFormat:@"%.2f",RunningTotal];
    
}
-(IBAction)Allclear:(id)sender{
    Method=0;
    RunningTotal=0;
    SelectNumber=0;
    self.display.text= [NSString stringWithFormat:@"0"];
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
