//
//  Patient.m
//  DeligatesTest
//
//  Created by Алексей Малашенков on 10/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (BOOL) howAreYou {
    
    BOOL iFeelGood = arc4random() % 2;
    
    if (!iFeelGood) {
        [self.delegate patientFeelsBad:self];
    }
    
    return iFeelGood;
}

- (void) takePill {
    NSLog(@"%@ takes a pill", self.name);
}

- (void) makeShot {
    NSLog(@"%@ makes a shot", self.name);
}

@end
