//
//  Swimmer.m
//  HomeWork-5
//
//  Created by Алексей Малашенков on 04/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import "Swimmer.h"

@implementation Swimmer

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"Anna";
        self.height = 167.5f;
        self.weight = 45.5f;
        self.gender = @"Female";
    }
    return self;
}

- (void) movement {
    NSLog(@"Swimmer started moving");
}

@end
