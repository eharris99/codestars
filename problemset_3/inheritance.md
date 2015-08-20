###Inheritance is when you create a parent class (like Person or Shape) and then create multiple child classes that inherit methods from the parent.

### The child class (like its parent) is created by going File-> New -> File -> Cocoa Touch Class and then naming it, and choosing to make it a subclass. The first class has to be a subclass of NSObject. After that new classes, like rectangle or employee, can be created as subclasses of the first class you had created, like Shape or Person.

### The child class can override the parent by putting a new implementation inside an old method name. Or it can continue to use the parent or superclass's method table by using the "super" keyword. This word reminds me of self in that it tells you which level to look at.

### One tricky inheritance thing is to always remember to #import "Person.h" in the implementation file, although using xcode to choose the subclass should make that happen automatically.

### the main.m must import all the header/ interface files. It must import the parent class interface file (Shape.h or Person.h) and then all the kids' header files too... Circle.h, Square.h or Employee.h as the case may be.

###The isa pointer stands for "is a." it is the only instance variable of NSObject. All classes inherit, directly or indirectly, from NSObject. 

### if a message is sent to a class, trying to use a method, the isa pointers point back to parent classes where this method may reside.

##### The apple documentation on super is this:

objc_msgSendSuper
Sends a message with a simple return value to the superclass of an instance of a class.

Declaration
OBJECTIVE-C
id objc_msgSendSuper ( struct objc_super *super, SEL op, ... );

Parameters
super	
A pointer to an objc_super data structure. Pass values identifying the context the message was sent to, including the instance of the class that is to receive the message and the superclass at which to start searching for the method implementation.
op	
A pointer of type SEL. Pass the selector of the method that will handle the message.
...	
A variable argument list containing the arguments to the method.
Return Value
The return value of the method identified by op.

Discussion
When it encounters a method call, the compiler generates a call to one of the functions objc_msgSend, objc_msgSend_stret, objc_msgSendSuper, or objc_msgSendSuper_stret. Messages sent to an object’s superclass (using the super keyword) are sent using objc_msgSendSuper; other messages are sent using objc_msgSend. Methods that have data structures as return values are sent using objc_msgSendSuper_stret and objc_msgSend_stret.
