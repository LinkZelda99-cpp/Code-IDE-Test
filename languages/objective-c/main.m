#import <Foundation/Foundation.h>
int main(void) {
  @autoreleasepool {
    NSArray<NSNumber *> *values = @[@3, @1, @4, @1, @5, @9];
    NSLog(@"Hello from Objective-C");
    NSLog(@"count: %lu", (unsigned long)values.count);
  }
  return 0;
}
