//
//  main.m
//  HomeWork-8
//
//  Created by Алексей Малашенков on 09/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray* firstNameArray = [NSArray arrayWithObjects:@"Aleksey", @"Ivan", @"Dmitriy", nil];
        NSArray* lastNameArray = [NSArray arrayWithObjects:@"Ivanov", @"Petrov", @"Sidorow", nil];
        NSArray* welcomePhrase = [NSArray arrayWithObjects:@"Privet", @"Hello", @"Privetanne", nil];
        
        NSMutableDictionary* journal = [[NSMutableDictionary alloc] init];
        
        for (int i = 0; i < [firstNameArray count]; i++) {
            
            Student* myStudent = [[Student alloc] init];
            
            [myStudent setFirstName: [firstNameArray objectAtIndex:i]
                        andLastName:[lastNameArray objectAtIndex:i]
                        andWelcomePhrase:[welcomePhrase objectAtIndex:i]];
            
            NSString* familyName = [NSString stringWithFormat:@"%@ %@", [firstNameArray objectAtIndex:i], [lastNameArray objectAtIndex:i]];
            
            [journal setValue:myStudent forKey:familyName];
        }
        
        NSLog(@"%@", journal);
        
        NSMutableArray* arrayKeys = [NSMutableArray array];
        
        NSInteger iterator = 0;
        
        for (NSString* keys in journal.allKeys) {
            NSLog(@"%d) %@",iterator, [journal valueForKey:keys]);
            [arrayKeys addObject:keys];
            iterator++;
        }
        
        iterator = 0;
        
        NSArray* sortedArrayKeys = [arrayKeys sortedArrayUsingSelector:@selector(compare:)];
        
        for (NSString* sortedKeys in sortedArrayKeys) {
            NSLog(@"%d) %@", iterator, [journal valueForKey:sortedKeys]);
            iterator++;
        }
        
        iterator = 0;
        
    }
    return 0;
}
