//
//  Doctor.m
//  NotificationsTest-Lesson-10
//
//  Created by Алексей Малашенков on 15/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import "Doctor.h"
#import "Government.h"

@implementation Doctor

#pragma mark - init

- (instancetype)init
{
    self = [super init];
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(salaryChangedNotivication:) name:GovernmentSalaryDidChangeNotification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(averagePriceChangedNotivication:) name:GovernmentAveragePriceDidChangeNotification object:nil];
    }
    return self;
}

- (void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

#pragma mark - Notificatoin

- (void) salaryChangedNotivication:(NSNotification*) notification {
    NSNumber* value = [notification.userInfo objectForKey:GovernmentSalaryUserInfoKey];
    
    float salary = [value floatValue];
    
    if (salary < self.salary) {
        NSLog(@"Doctors are not happy");
    } else {
        NSLog(@"Doctors are happy");
    }
    
    self.salary = salary;
}

- (void) averagePriceChangedNotivication:(NSNotification*) notification {
    
}

@end
