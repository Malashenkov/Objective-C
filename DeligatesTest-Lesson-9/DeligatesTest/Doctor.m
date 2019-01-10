//
//  Doctor.m
//  DeligatesTest
//
//  Created by Алексей Малашенков on 10/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

#pragma mark - PatientDelegate

- (void) patientFeelsBad:(Patient*) patient {
    
    NSLog(@"Patient %@ feels bad", patient.name);
    
    if (patient.temperature >= 37.f && patient.temperature <= 39.f) {
        [patient takePill];
    } else if (patient.temperature > 40.f) {
        [patient makeShot];
    } else {
        NSLog(@"Patient %@ should rest", patient.name);
    }
}

- (void) patient:(Patient*) patient hasQuestion:(NSString*) question {
    NSLog(@"Patient %@ has a question: %@", patient.name, question);
}

@end
