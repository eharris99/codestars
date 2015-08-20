##main.m

```
#import <Foundation/Foundation.h>
#import "Shape.h"
#import "square.h"
#import "Circle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Shape *sphere = [[Shape alloc] init];
        square *squ = [[square alloc] init];
        Circle *cir = [[Circle alloc] init];
        
        // Give the instance variables interesting values using setters
        [sphere setWidthInMeters:96];
        [sphere setHeightInMeters:44];
        
        [squ setWidthInMeters : 55];
        [squ setHeightInMeters : 55];
        
        [cir setRadius:44];
        
        // Log the instance variables using the getters
        float height = [sphere heightInMeters];
        float width = [sphere widthInMeters];
        float squareSide = [squ heightInMeters];
        float circleradius = [cir radius];
        NSLog(@"sphere is %f meters tall and %f meters wide", height, width);
        NSLog(@"square is %f meters by %f meters", squareSide, squareSide);
        NSLog(@"circle radius is %f meters and circle area is %f meters", circleradius, [cir shapeArea]);
        
        // Log some values using custom methods
        float sphereArea = [sphere shapeArea];
        NSLog(@"sphere has an area of %f", sphereArea);
        NSLog(@"square has an area of %f", [squ squareArea]);
        NSLog(@"circle area is %f", [cir shapeArea]);
        

    }
    return 0;
}
```



## Shape.h
```
#import <Foundation/Foundation.h>

@interface Shape : NSObject

@property (nonatomic) float heightInMeters;
@property (nonatomic) float widthInMeters;

- (float)shapeArea;

@end
```


## Shape.m

```
#import "Shape.h"

@implementation Shape

- (float)shapeArea
{
    float h = [self heightInMeters];
    float w = [self widthInMeters];
    return h * w;
}

@end
```


##square.h

```
#import "Shape.h"

@interface square : Shape

- (float) squareArea;

@end
```


#square.m
```
#import "square.h"

@implementation square

- (float) squareSide

{
    return [super heightInMeters];
}



- (float) squareArea


{
    
    
    return [super shapeArea];
    
    
}

@end

```
#Circle.h

```
#import "Shape.h"

@interface Circle : Shape

@property (nonatomic)float radius;

-(float) shapeArea;

@end

```

#Circle.m

```
#import "Circle.h"

@implementation Circle

- (float) shapeArea
{
    float r = [self radius];
    
    return 3.14159 * (r * r);
}



@end

```

