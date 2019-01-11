//
//  main.m
//  HomeWork-9
//
//  Created by Алексей Малашенков on 10/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Patient* patient1 = [[Patient alloc] init];
        patient1.name = @"Vova";
        patient1.temperature = 36.6f;
        patient1.throatColor = @"Red";
        
        Patient* patient2 = [[Patient alloc] init];
        patient2.name = @"Petya";
        patient2.temperature = 40.2f;
        patient2.throatColor = @"Blue";
        
        Patient* patient3 = [[Patient alloc] init];
        patient3.name = @"Dima";
        patient3.temperature = 37.1f;
        patient3.throatColor = @"Normal";
        
        Patient* patient4 = [[Patient alloc] init];
        patient4.name = @"Sasha";
        patient4.temperature = 38.f;
        patient4.throatColor = @"Green";
        
        Doctor* doctor = [[Doctor alloc] init];
        
        patient1.delegate = doctor;
        patient2.delegate = doctor;
        patient3.delegate = doctor;
        patient4.delegate = doctor;
        
        NSLog(@"%@ are you ok? %@", patient1.name, [patient1 howAreYou] ? @"Yes" : @"No");
        NSLog(@"%@ are you ok? %@", patient2.name, [patient2 howAreYou] ? @"Yes" : @"No");
        NSLog(@"%@ are you ok? %@", patient3.name, [patient3 howAreYou] ? @"Yes" : @"No");
        NSLog(@"%@ are you ok? %@", patient4.name, [patient4 howAreYou] ? @"Yes" : @"No");
        
    }
    return 0;
}
