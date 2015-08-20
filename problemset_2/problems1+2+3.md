# problem_set2 answers

## problems one and two: these methods log correct results when code is used on phrase "hi how are you" in main.m's autoreleasepool; problem three logs correct area for sphere in main.m

#first is method wordCount for imaginary class Phrase


```

-(NSInteger)wordCount:(Phrase*)phrase {
NSArray *words = [phrase componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
NSInteger wordCount = [words count];
NSLog(@"The number of words is %ld", wordCount);
}

```
#second is method vowelCount for imaginary class Phrase

````

-(NSUInteger)vowelCount:(Phrase*)phrase {

NSMutableArray *array = [@[] mutableCopy];

[phrase enumerateSubstringsInRange:NSMakeRange(0, [phrase length]) options:NSStringEnumerationByComposedCharacterSequences usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
[array addObject:substring];
}] ;
NSCountedSet *set = [[NSCountedSet alloc] initWithArray:array];

for (NSString *nucleobase in @[@"a", @"e", @"i", @"o",@"u"]){
NSUInteger vowelCount =  [set countForObject:nucleobase];
NSLog(@"%@: %lu", nucleobase, (unsigned long)vowelCount);

}

```
#github won't let me push problem 3 so here is the code

## main.m

```
//
//  main.m
//  problem3
//
//  Created by Elise Harris on 8/9/15.
//  Copyright (c) 2015 Elise Harris. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shape.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Shape *sphere = [[Shape alloc] init];
        
        // Give the instance variables interesting values using setters
        [sphere setWidthInMeters:96];
        [sphere setHeightInMeters:44];
        
        // Log the instance variables using the getters
        float height = [sphere heightInMeters];
        int width = [sphere widthInMeters];
        NSLog(@"sphere is %f meters tall and %d meters wide", height, width);
        
        // Log some values using custom methods
        float sphereArea = [sphere shapeArea];
        NSLog(@"sphere has an area of %f", sphereArea);

    }
    return 0;
}



```
#interface file
```

//
//  Shape.h
//  problem3
//
//  Created by Elise Harris on 8/9/15.
//  Copyright (c) 2015 Elise Harris. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Shape : NSObject

{
    float _heightInMeters;
    int _widthInMeters;
    
}

// Shape has methods to read and set its instance variables
- (float)heightInMeters;
- (void)setHeightInMeters:(float)h;
- (int)widthInMeters;
- (void)setWidthInMeters:(int)w;

// Shape has a method that calculates the area
- (float)shapeArea;



@end

```
#implementation file

```

//
//  Shape.m
//  problem3
//
//  Created by Elise Harris on 8/9/15.
//  Copyright (c) 2015 Elise Harris. All rights reserved.
//

#import "Shape.h"

@implementation Shape

- (float)heightInMeters
{
    return _heightInMeters;
}

- (void)setHeightInMeters:(float)h
{
    _heightInMeters = h;
}

- (int)widthInMeters
{
    return _widthInMeters;
}

- (void)setWidthInMeters:(int)w
{
    _widthInMeters = w;
}

- (float)shapeArea
{
    float h = [self heightInMeters];
    float w = [self widthInMeters];
    return h * w;
}


@end
