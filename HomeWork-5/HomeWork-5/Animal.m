//
//  Animal.m
//  HomeWork-5
//
//  Created by Алексей Малашенков on 04/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import "Animal.h"

@implementation Animal

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.family = @"Felidae";
        self.species = @"Panthera leo";
        self.order = @"Carnivora";
    }
    return self;
}

- (void) movement {
    NSLog(@"%@ moves fast", self.species);
}

@end
