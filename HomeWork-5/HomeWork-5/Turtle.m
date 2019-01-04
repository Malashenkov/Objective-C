//
//  Turtle.m
//  HomeWork-5
//
//  Created by Алексей Малашенков on 04/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import "Turtle.h"

@implementation Turtle

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.family = @"Testudines";
        self.species = @"Turtle";
        self.order = @"Testudines";
    }
    return self;
}

- (void) movement {
    NSLog(@"%@ moves slow", self.species);
}

@end
