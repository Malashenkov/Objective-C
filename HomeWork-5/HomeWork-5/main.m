//
//  main.m
//  HomeWork-5
//
//  Created by Алексей Малашенков on 04/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "People.h"
#import "Bicycler.h"
#import "Runner.h"
#import "Swimmer.h"
#import "Footballer.h"
#import "Animal.h"
#import "Turtle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"<--------------------TASK #1-------------------->");
        
        People* people = [[People alloc] init];
        Bicycler* bicycler = [[Bicycler alloc] init];
        Runner* runner = [[Runner alloc] init];
        Swimmer* swimmer = [[Swimmer alloc] init];
        Footballer* footballer = [[Footballer alloc] init];
        
        NSMutableArray* array = [NSMutableArray arrayWithObjects:people, bicycler, runner, swimmer, nil];
        
        for (People* p in array) {
            NSLog(@"Name: %@, height: %f, weight: %f, gender: %@", p.name, p.height, p.weight, p.gender);
            [p movement];
        }
        
        NSLog(@"<--------------------TASK #2-------------------->");
        
        [array addObject:footballer];
        
        for (int i = [array count] - 1; i >= 0; i--) {
            
            if ([[array objectAtIndex: i] isKindOfClass:[Footballer class]]) {
                NSLog(@"%d) name - %@, height - %f, weight - %f, gender - %@, club - %@, position - %@", i, [[array objectAtIndex: i] name], [[array objectAtIndex: i] height], [[array objectAtIndex: i] weight], [[array objectAtIndex: i] gender], [[array objectAtIndex: i] clubName], [[array objectAtIndex: i] posit]);
                
                [[array objectAtIndex: i] movement];
            } else {
                
                NSLog(@"%d) name - %@, height - %f, weight - %f, gender - %@", i, [[array objectAtIndex: i] name], [[array objectAtIndex: i] height], [[array objectAtIndex: i] weight], [[array objectAtIndex: i] gender]);
                
                [[array objectAtIndex: i] movement];
            }
        }
        
        NSLog(@"<--------------------TASK #3-------------------->");
        
        Animal* animal = [[Animal alloc] init];
        Turtle* turtle = [[Turtle alloc] init];
        
        [array addObject:animal];
        [array addObject:turtle];
        
        for (int i = 0; i < [array count]; i++) {
            if ([[array objectAtIndex: i] isKindOfClass:[Animal class]]) {
                NSLog(@"%d) %@ - family - %@, species - %@, order - %@", i, [[array objectAtIndex: i] class], [[array objectAtIndex: i] family], [[array objectAtIndex: i] species], [[array objectAtIndex: i] order]);
                
                [[array objectAtIndex: i] movement];
            } else {
                
                NSLog(@"%d) %@ - name - %@, height - %f, weight - %f, gender - %@", i, [[array objectAtIndex: i] class], [[array objectAtIndex: i] name], [[array objectAtIndex: i] height], [[array objectAtIndex: i] weight], [[array objectAtIndex: i] gender]);
                
                [[array objectAtIndex: i] movement];
            }
        }
        
        NSLog(@"<--------------------TASK #4-------------------->");
        
        NSArray* peoples = [NSArray arrayWithObjects:people, bicycler, runner, swimmer, footballer, nil];
        NSArray* animals = [NSArray arrayWithObjects:animal, turtle, nil];
        
        NSInteger maxCount = 0;
        
        if ([peoples count] > [animals count]) {
            maxCount = [peoples count];
        } else {
            maxCount = [animals count];
        }
        
        for (int i = 0; i < maxCount; i++) {
            if (i <= ([peoples count] - 1)) {
                NSLog(@"%@", [peoples objectAtIndex:i]);
            }
            if (i <= [animals count] - 1) {
                NSLog(@"%@", [animals objectAtIndex:i]);
            }
        }
        
        NSLog(@"<--------------------TASK #5-------------------->");
        
        NSArray* mixArray = [NSArray arrayWithObjects:people, bicycler, runner, swimmer, footballer, animal, turtle, nil];
        mixArray = [mixArray sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
            
            if ([obj1 isKindOfClass:[People class]] && [obj2 isKindOfClass:[People class]]) {
                
                return [[(People*)obj1 name] compare:[(People*)obj2 name]];
                
            } else if ([obj1 isKindOfClass:[Animal class]] && [obj2 isKindOfClass:[Animal class]]) {
                
                return [[(Animal*)obj1 species] compare:[(Animal*)obj2 species]];
                
            } else if ([obj1 isKindOfClass:[People class]]) {
                
                return NSOrderedAscending;
                
            } else {
                
                return NSOrderedDescending;
            }
        }];
        
        for (NSObject* object in mixArray) {
            NSLog(@"%@", object);
        }
        
    }
    return 0;
}
