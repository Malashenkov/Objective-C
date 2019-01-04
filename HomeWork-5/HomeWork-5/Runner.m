//
//  Runner.m
//  HomeWork-5
//
//  Created by Алексей Малашенков on 04/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import "Runner.h"

@implementation Runner

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"Bolt";
        self.height = 190.f;
        self.weight = 70.f;
        self.gender = @"Male";
    }
    return self;
}

- (void) movement {
    NSLog(@"Runner started moving");
}

@end
