//
//  main.m
//  TypesTest-Lesson-6
//
//  Created by Алексей Малашенков on 05/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h";

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL boolVar = NO;
        int intVar = 10;
        NSUInteger uIntVar = 100;
        float floatVar = 1.5f;
        double doubleVar = 2.5f;
        
        NSLog(@"boolVar = %d, intVar = %d, uIntVar = %d, floatVar = %f, doubleVar = %f", boolVar, intVar, uIntVar, floatVar, doubleVar);
        NSLog(@"boolVar = %ld, intVar = %ld, uIntVar = %ld, floatVar = %ld, doubleVar = %ld", sizeof(boolVar), sizeof(intVar), sizeof(uIntVar), sizeof(floatVar), sizeof(doubleVar));
        
        Student* studentA = [[Student alloc] init];
        
        studentA.name = @"Best Student";
        
        NSLog(@"StudentA name = %@", studentA.name);
        
        Student* studentB = studentA;
        
        studentB.name = @"Bad Student";
        
        NSLog(@"StudentA name = %@", studentA.name);
        
        NSInteger a = 10;
        NSLog(@"a = %d", a);
        
        NSInteger b = a;
        b = 5;
        
        NSLog(@"a = %d, b = %d", a, b);
        
        NSInteger* c = &a;
        
        *c = 8;
        
        NSLog(@"a = %d, b = %d", a, b);
        
        NSInteger test = 0;
        
        NSInteger result = [studentA test:a testPointer:&test];
        
        NSLog(@"result = %d, test = %d", result, test);
        
        Student* student = [[Student alloc] init];
        
        [student setGender:GenderMale];
        
        Taburetka a1 = 10;
        
        CGPoint point;
        
        point.x = 5.5f;
        point.y = 10;
        
        point = CGPointMake(6, 3);
        
        CGSize size;
        CGRect rect;
        
        rect = CGRectMake(0, 0, 30, 60);
        
        BOOL key = CGRectContainsPoint(rect, point);
        
        NSNumber* boolObject = [NSNumber numberWithBool:boolVar];
        NSNumber* intObject = [NSNumber numberWithInteger:intVar];
        NSNumber* uIntlObject = [NSNumber numberWithUnsignedInteger:uIntVar];
        NSNumber* floatObject = [NSNumber numberWithFloat:floatVar];
        NSNumber* doubleObject = [NSNumber numberWithDouble:doubleVar];
        
        NSArray* array = [NSArray arrayWithObjects:boolObject, intObject, uIntlObject, floatObject, doubleObject, nil];
        
        NSLog(@"boolVar = %d, intVar = %ld, uIntVar = %lu, floatVar = %f, doubleVar = %f", [[array objectAtIndex:0] boolValue], (long)[[array objectAtIndex:1] integerValue], (unsigned long)[[array objectAtIndex:2] unsignedIntegerValue], [[array objectAtIndex:3] floatValue], [[array objectAtIndex:4] doubleValue]);
        
        CGPoint point1 = CGPointMake(0, 5);
        CGPoint point2 = CGPointMake(3, 4);
        CGPoint point3 = CGPointMake(2, 8);
        CGPoint point4 = CGPointMake(7, 1);
        CGPoint point5 = CGPointMake(4, 4);
        
        
        NSArray* array2 = [NSArray arrayWithObjects:[NSValue valueWithPoint:point1], [NSValue valueWithPoint:point2], [NSValue valueWithPoint:point3], [NSValue valueWithPoint:point4], [NSValue valueWithPoint:point5], nil];
        
        for (NSValue* value in array2) {
            CGPoint p = [value pointValue];
            NSLog(@"point = %@", NSStringFromPoint(p));
        }
        
    }
    return 0;
    
}


