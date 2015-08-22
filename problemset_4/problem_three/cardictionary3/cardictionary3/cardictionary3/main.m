//
//  main.m
//  cardictionary3
//
//  Created by Elise Harris on 8/22/15.
//  Copyright (c) 2015 ech. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        NSDictionary *acuratlx = @{@"make":@"acura",@"year":@"2015",@"model":@"TLX"};
//        NSDictionary *astonmartin = @{@"make": @"aston martin", @"model": @"V8 Vantage GT", @"year": @2015}
//        NSDictionary *alfaromeo= @{@"make": @"alfa romeo", @"model": @"4C", @"year": @2015}
//        NSDictionary *audi1= @{@"make": , @"model": @"M6", @"year": @2015}
        
        NSArray* cars = [NSArray arrayWithObjects:
                         [NSDictionary dictionaryWithObjectsAndKeys:
                           @"Audi",@"make",
                           @"2015",@"year",
                           @"Q3",@"model",
                           nil],
                          [NSDictionary dictionaryWithObjectsAndKeys:
                           @"Alfa Romeo",@"make",
                           @"2015",@"year",
                           @"4C",@"model",
                           nil],
                          [NSDictionary dictionaryWithObjectsAndKeys:
                           @"Aston Martin",@"make",
                           @"2015",@"year",
                           @"V8 Vantage GT",@"model", nil],
                           [NSDictionary dictionaryWithObjectsAndKeys:
                            @"Acura",@"make",
                            @"2015",@"year",
                            @"TLX",@"model", nil],
                            [NSDictionary dictionaryWithObjectsAndKeys:
                             @"Audi",@"make",
                             @"2015",@"year",
                             @"A3",@"model",
                        nil], nil];
        
//        use KVC to get the names
//        NSArray* carModel = [cars valueForKey:@"model"];
//        NSArray* carYear = [cars valueForKey:@"year"];
//        NSArray* carMake = [cars valueForKey:@"make"];
     
        NSArray *values = [cars valueForKeyPath: @"@unionOfArrays.@allValues"];

        
        NSLog(@"The cars are %@",values);
        
        
        
    }
    return 0;
}

        
        
//        car=[NSMutableDictionary dictionary];
        //        [car setObject:@"Q3"
        //                forKey:@"model"];
        //        [car setObject:@"2015" forKey:@"year"];
        //        [car setObject:@"Audi" forKey:@"make"];
        //        [cars addObject:car];
        //
        //        car=[NSMutableDictionary dictionary];
        //        [car setObject:@"A3"
        //                forKey:@"model"];
        //        [car setObject:@"2015" forKey:@"year"];
        //        [car setObject:@"Audi" forKey:@"make"];
        //        [cars addObject:car];
        //
        
//        NSArray *cars = [[NSArray alloc]init];
//        
//        
//        
//        NSString *carmake = [car objectForKey:@"make"];
//        NSString *caryear = [car objectForKey:@"year"];
//        NSString *carmodel = [car objectForKey:@"model"];
//        for (d in cars) {
//            NSLog(@"cars[d] is %@ %@ %@", caryear, carmake, carmodel);
//        }
//        
//    }
//    return 0;
//}

//        NSMutableArray *cars = [[NSMutableArray alloc]init];
//        
//        NSMutableDictionary *car = [[NSMutableDictionary alloc] init];
//        
//        for (int i = 0; i < 6; i++) {
        
//            // Create an instance of BNREmployee
//            car *acura = [[car alloc] init];
//            
//            // Give the instance variables interesting values
//            [car setMake:90 + i];
//            [car setYear:1.8 - i/10.0];
//            [car setModel:i];
//            
//            // Put the employee in the employees array
//            [employees addObject:mikey];
//            
//            // Is this the first employee?
//            if (i == 0) {
//                [executives setObject:mikey forKey:@"CEO"];
//            }
//            
//            // Is this the second employee?
//        
//        car=[NSMutableDictionary dictionary];
//        [car setObject:@"TLX"
//                forKey:@"model"];
//        [car setObject:@"2015" forKey:@"year"];
//        [car setObject:@"Acura" forKey:@"make"];
//        [cars addObject:car];
//        
//        car=[NSMutableDictionary dictionary];
//        [car setObject:@"Q3"
//                forKey:@"model"];
//        [car setObject:@"2015" forKey:@"year"];
//        [car setObject:@"Audi" forKey:@"make"];
//        [cars addObject:car];
//        
//        car=[NSMutableDictionary dictionary];
//        [car setObject:@"A3"
//                forKey:@"model"];
//        [car setObject:@"2015" forKey:@"year"];
//        [car setObject:@"Audi" forKey:@"make"];
//        [cars addObject:car];
//        
//        car=[NSMutableDictionary dictionary];
//        [car setObject:@"V8 Vantage GT"
//                forKey:@"model"];
//        [car setObject:@"2015" forKey:@"year"];
//        [car setObject:@"Aston Martin" forKey:@"make"];
//        [cars addObject:car];
//        
//        car=[NSMutableDictionary dictionary];
//        [car setObject:@"4C"
//                forKey:@"model"];
//        [car setObject:@"2015" forKey:@"year"];
//        [car setObject:@"Alfa Romeo" forKey:@"make"];
//        [cars addObject:car];
//        
//        
//        NSArray *carList = [NSArray arrayWithContentsOfFile:@"/tmp/cars.plist"];
//        
//        for (NSDictionary *d in carList) {
//            NSLog(@"Car: %@ , %@, %@", [d objectForKey:@"year"], [d objectForKey:@"make"], [d objectForKey:@"model"]);
//            
//        }
//    }
//    return 0;
//}
