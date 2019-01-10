//
//  Student.m
//  HomeWork-8
//
//  Created by Алексей Малашенков on 09/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import "Student.h"

@implementation Student

-(NSString*) description {
    
    NSString* newDescription = [NSString stringWithFormat:@"First name - %@, last name - %@, welcome phrase - %@", self.firstName, self.lastName, self.welcomePhrase];
    
    return newDescription;
}

-(void) setFirstName: (NSString*) firstName andLastName: (NSString*) lastName andWelcomePhrase: (NSString*) welcomePhrase {
    self.firstName = firstName;
    self.lastName = lastName;
    self.welcomePhrase = welcomePhrase;
}

@end
