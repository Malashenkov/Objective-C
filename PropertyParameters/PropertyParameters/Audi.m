//
//  Audi.m
//  PropertyParameters
//
//  Created by Алексей Малашенков on 03/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import "Audi.h"

@implementation Audi

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.color = @"Red";
        self.type = @"Econom";
    }
    return self;
}

@end
