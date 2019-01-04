//
//  Footballer.m
//  HomeWork-5
//
//  Created by Алексей Малашенков on 04/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import "Footballer.h"

@implementation Footballer

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"Lewandowski";
        self.height = 185.f;
        self.weight = 79.f;
        self.gender = @"Male";
        self.clubName = @"FC Bayern München";
        self.posit = @"Striker";
    }
    return self;
}

- (void) movement {
    [super movement];
    NSLog(@"Footballer started moving");
}

- (void) scoreGoal {
    NSLog(@"GOAL!!!");
}

@end
