//
//  Bicycler.m
//  HomeWork-5
//
//  Created by Алексей Малашенков on 04/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import "Bicycler.h"

@implementation Bicycler

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"Ivan";
        self.height = 170.f;
        self.weight = 60.f;
        self.gender = @"Male";
    }
    return self;
}

- (void) movement {
    NSLog(@"Bicycler started moving");
}

@end
