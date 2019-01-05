//
//  main.m
//  TypesTest-Lesson-6
//
//  Created by Алексей Малашенков on 05/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL boolVar = NO;
        NSInteger intVar = 10;
        NSUInteger uIntVar = 100;
        CGFloat floatVar = 1.5f;
        double doubleVar = 2.5f;
        
        NSLog(@"boolVar = %d, intVar = %d, uIntVar = %d, floatVar = %f, doubleVar = %f", boolVar, intVar, uIntVar, floatVar, doubleVar);
        
    }
    return 0;
}
