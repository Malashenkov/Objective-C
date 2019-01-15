//
//  BadDoctor.m
//  HomeWork-9
//
//  Created by Алексей Малашенков on 15/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import "BadDoctor.h"

@implementation BadDoctor

- (void) patientFeelsBad:(Patient*) patient {
    
    NSLog(@"Patient %@ feels bad", patient.name);
    
    if (patient.temperature >= 37.f && patient.temperature <= 39.f) {
        NSLog(@"Patient %@ should eat mushroom", patient.name);
    } else if (patient.temperature > 40.f) {
        NSLog(@"Patient %@ should eat a lot of mushrooms", patient.name);
    } else {
        NSLog(@"Patient %@ should run a marathon", patient.name);
    }
    
    if ([patient.throatColor  isEqual: @"Red"]) {
        NSLog(@"Patient %@ has red color throat -> eat icecream", patient.name);
    } else if ([patient.throatColor  isEqual: @"Normal"]) {
        NSLog(@"Patient %@ has normal color throar -> drink cold water", patient.name);
    } else {
        NSLog(@"Patient %@ has unknown color throat - it's ok", patient.name);
    }
}

- (void) patient:(Patient*) patient hasQuestion:(NSString*) question {
    NSLog(@"Patient %@ has a question: %@", patient.name, question);
}

@end
