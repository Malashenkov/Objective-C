//
//  Object.m
//  ParametersTest
//
//  Created by Алексей Малашенков on 03/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import "Object.h"

@implementation Object

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"object is created");
    }
    return self;
}

- (void) dealloc {
    NSLog(@"object is deallocated");
}

- (id) copyWithZone:(NSZone *)zone {
    Object* newObject = [[Object alloc] init];
    newObject.name = self.name;
    return newObject;
}

@end
