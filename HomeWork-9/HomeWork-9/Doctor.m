//
//  Doctor.m
//  HomeWork-9
//
//  Created by Алексей Малашенков on 10/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.doctorReport = [NSMutableDictionary dictionary];
    }
    return self;
}

-(void) report {
    
    NSLog(@"Doctor raport:");
    
    if ([self.doctorReport count] != 0) {
        for (NSString* key in [self.doctorReport allKeys]) {
            id obj = [self.doctorReport objectForKey:key];
            NSLog(@"Patient: %@ - %@", key, obj);
        }
    } else {
        NSLog(@"Today, the doctor was without patients");
    }
    
}

#pragma mark - PatientDelegate

- (void) patientFeelsBad:(Patient*) patient {
    
    NSLog(@"Patient %@ feels bad", patient.name);
    
    if (patient.temperature >= 37.f && patient.temperature <= 39.9f) {
        [patient takePill];
        
    } else if (patient.temperature > 40.f) {
        [patient makeShot];
        
    } else {
        NSLog(@"Patient %@ should rest", patient.name);
    }
    
    if ([patient.throatColor  isEqual: @"Red"]) {
        NSLog(@"Patient %@ has red color throat", patient.name);
        [patient takePill];
        
    } else if ([patient.throatColor  isEqual: @"Normal"]) {
        NSLog(@"Patient %@ has normal color throar", patient.name);
        
    } else {
        NSLog(@"Patient %@ has unknown color throat", patient.name);
        [patient makeShot];
    }
    
    BodyParts bodyParts = arc4random() % 5;
    
    switch (bodyParts) {
        case Head:
            NSLog(@"Doctor prescribed headache pills to patient %@", patient.name);
            [self.doctorReport setObject:@"Patient complained of headache" forKey:patient.name];
            break;
        case Stomach:
            NSLog(@"Doctor prescribed pills for abdominal pain to patient %@", patient.name);
            [self.doctorReport setObject:@"Patient complained of abdominal pain" forKey:patient.name];
            break;
        case Leg:
            NSLog(@"Doctor prescribed a pain shot in the leg to patient %@", patient.name);
            [self.doctorReport setObject:@"Patient complained of pain in the leg" forKey:patient.name];
            break;
        case Arm:
            NSLog(@"Doctor prescribed a pain shot in the arm to patient %@", patient.name);
            [self.doctorReport setObject:@"Patient complained of pain in the arm" forKey:patient.name];
            break;
        case Tooth:
            NSLog(@"Doctor prescribed a toothache pills to a patient %@", patient.name);
            [self.doctorReport setObject:@"Patient complained of toothache" forKey:patient.name];
            break;
            
        default:
            NSLog(@"The doctor did not find the patient %@ worried", patient.name);
            break;
    }
    
    
}

- (void) patient:(Patient*) patient hasQuestion:(NSString*) question {
    NSLog(@"Patient %@ has a question: %@", patient.name, question);
}

@end
