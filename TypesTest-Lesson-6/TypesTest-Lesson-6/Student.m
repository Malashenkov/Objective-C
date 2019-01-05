//
//  Student.m
//  TypesTest-Lesson-6
//
//  Created by Алексей Малашенков on 05/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import "Student.h"

@implementation Student

- (int) test:(NSInteger*) test testPointer:(NSInteger*) testPointer {
    
    *testPointer = 5;
    
    return test;
}

@end
