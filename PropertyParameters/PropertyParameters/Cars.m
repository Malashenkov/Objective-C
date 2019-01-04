//
//  Cars.m
//  PropertyParameters
//
//  Created by Алексей Малашенков on 03/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import "Cars.h"

@implementation Cars

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.carModel = @"Default";
        self.horsePower = 0;
        self.doorsNumber = 0;
        self.wheelNumber = 0;
        self.transmission = @"Nil";
    }
    return self;
}

- (void) carStart {
    NSLog(@"%@ start with %d and make tr-tr", self.carModel, self.horsePower);
}

@end
