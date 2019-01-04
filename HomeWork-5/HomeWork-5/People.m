//
//  People.m
//  HomeWork-5
//
//  Created by Алексей Малашенков on 04/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import "People.h"

@implementation People

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"Aleksey";
        self.height = 180.f;
        self.weight = 85.f;
        self.gender = @"Male";
    }
    return self;
}

- (void) movement {
    NSLog(@"People started moving");
}

@end
