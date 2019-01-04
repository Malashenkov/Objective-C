//
//  ChildClass.m
//  FunctionsTest
//
//  Created by Алексей Малашенков on 02/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import "ChildClass.h"

@implementation ChildClass

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Instanse of child class is init ");
    }
    return self;
}

- (NSString*) saySomeNumberString {
    return @"Something";
}

- (NSString*) saySomething {
    return [super saySomeNumberString];;
}

@end
