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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        People* people = [[People alloc] init];
        Bicycler* bicycler = [[Bicycler alloc] init];
        Runner* runner = [[Runner alloc] init];
        Swimmer* swimmer = [[Swimmer alloc] init];
        
        NSArray* array = [NSArray arrayWithObjects:people, bicycler, runner, swimmer, nil];
        
        for (People* p in array) {
            NSLog(@"Name: %@, height: %f, weight: %f, gender: %@", p.name, p.height, p.weight, p.gender);
            [p movement];
        }
    }
    return 0;
}
