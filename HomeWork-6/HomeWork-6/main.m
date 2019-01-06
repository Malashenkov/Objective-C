//
//  main.m
//  HomeWork-6
//
//  Created by Алексей Малашенков on 06/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EnumTest.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        CGRect rectangle = CGRectMake(3, 3, 3, 3);
        CGPoint point = CGPointMake(0, 0);
        int x = 0;
        int y = 0;
        BOOL key = NO;
        
        for (int i = 0; i < 100; i++) {
            
            x = arc4random() % 11;
            y = arc4random() % 11;
            
            point = CGPointMake(x, y);
            key = CGRectContainsPoint(rectangle, point);
            
            if (key) {
                NSLog(@"%d) point (x: %d; y: %d)", i, x, y);
            }
        }
        
        EnumTest* test = [[EnumTest alloc] init];
        [test setExample:test3];
        NSLog(@"%d", test.example);
        
    }
    return 0;
}
