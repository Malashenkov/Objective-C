//
//  main.m
//  HomeWork-7
//
//  Created by Алексей Малашенков on 08/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jumpers.h"
#import "Runners.h"
#import "Swimmers.h"

#import "Animal.h"
#import "Cheetah.h"
#import "Dog.h"
#import "Kangaroo.h"
#import "Sloth.h"
#import "Turtle.h"
#import "Crocodile.h"

#import "Sportsman.h"
#import "Jumper.h"
#import "Runner.h"
#import "SumoWrestler.h"
#import "Swimmer.h"
#import "Triathlete.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Jumper* jumper1 = [[Jumper alloc] init];
        Jumper* jumper2 = [[Jumper alloc] init];
        
        jumper1.maximumJumpHeight = 5;
        jumper2.numberOfAttempts = 2;
        jumper1.maximumJumpHeight = 4;
        jumper2.numberOfAttempts = 1;
        
        Runner* runner1 = [[Runner alloc] init];
        Runner* runner2 = [[Runner alloc] init];
        Runner* runner3 = [[Runner alloc] init];
        
        runner1.maximumRunSpeed = 20;
        runner2.maximumRunSpeed = 30;
        runner3.maximumRunSpeed = 40;
        
        Swimmer* swimmer1 = [[Swimmer alloc] init];
        Swimmer* swimmer2 = [[Swimmer alloc] init];
        Swimmer* swimmer3 = [[Swimmer alloc] init];
        Swimmer* swimmer4 = [[Swimmer alloc] init];
        
        swimmer1.maximumSwimSpeed = 10;
        swimmer2.maximumSwimSpeed = 12;
        swimmer3.maximumSwimSpeed = 14;
        swimmer4.maximumSwimSpeed = 16;
        
        SumoWrestler* sumoWrestler = [[SumoWrestler alloc] init];
        
        Triathlete* triathlete1 = [[Triathlete alloc] init];
        Triathlete* triathlete2 = [[Triathlete alloc] init];
        Triathlete* triathlete3 = [[Triathlete alloc] init];
        
        triathlete1.maximumJumpHeight = 5;
        triathlete1.numberOfAttempts = 2;
        triathlete1.maximumRunSpeed = 20;
        triathlete1.maximumSwimSpeed = 10;
        triathlete2.maximumJumpHeight = 5;
        triathlete2.numberOfAttempts = 2;
        triathlete2.maximumRunSpeed = 20;
        triathlete2.maximumSwimSpeed = 10;
        triathlete3.maximumJumpHeight = 5;
        triathlete3.numberOfAttempts = 2;
        triathlete3.maximumRunSpeed = 20;
        triathlete3.maximumSwimSpeed = 10;
        
        Cheetah* cheetah1 = [[Cheetah alloc] init];
        Cheetah* cheetah2 = [[Cheetah alloc] init];
        
        cheetah1.maximumJumpHeight = 5;
        cheetah1.numberOfAttempts = 2;
        cheetah1.maximumRunSpeed = 20;
        cheetah2.maximumJumpHeight = 5;
        cheetah2.numberOfAttempts = 2;
        cheetah2.maximumRunSpeed = 20;
        
        Crocodile* crocodile1 = [[Crocodile alloc] init];
        Crocodile* crocodile2 = [[Crocodile alloc] init];
        
        crocodile1.maximumRunSpeed = 20;
        crocodile1.maximumSwimSpeed = 10;
        crocodile2.maximumRunSpeed = 20;
        crocodile2.maximumSwimSpeed = 10;
        
        Dog* dog1 = [[Dog alloc] init];
        Dog* dog2 = [[Dog alloc] init];
        Dog* dog3 = [[Dog alloc] init];
        Dog* dog4 = [[Dog alloc] init];
        
        dog1.maximumJumpHeight = 5;
        dog1.numberOfAttempts = 2;
        dog1.maximumRunSpeed = 20;
        dog1.maximumSwimSpeed = 10;
        dog2.maximumJumpHeight = 5;
        dog2.numberOfAttempts = 2;
        dog2.maximumRunSpeed = 20;
        dog2.maximumSwimSpeed = 10;
        dog3.maximumJumpHeight = 5;
        dog3.numberOfAttempts = 2;
        dog3.maximumRunSpeed = 20;
        dog3.maximumSwimSpeed = 10;
        dog4.maximumJumpHeight = 5;
        dog4.numberOfAttempts = 2;
        dog4.maximumRunSpeed = 20;
        dog4.maximumSwimSpeed = 10;
        
        Kangaroo* kangaroo1 = [[Kangaroo alloc] init];
        Kangaroo* kangaroo2 = [[Kangaroo alloc] init];
        Kangaroo* kangaroo3 = [[Kangaroo alloc] init];
        
        kangaroo1.maximumJumpHeight = 5;
        kangaroo1.numberOfAttempts = 2;
        kangaroo1.maximumRunSpeed = 20;
        kangaroo2.maximumJumpHeight = 5;
        kangaroo2.numberOfAttempts = 2;
        kangaroo2.maximumRunSpeed = 20;
        kangaroo3.maximumJumpHeight = 5;
        kangaroo3.numberOfAttempts = 2;
        kangaroo3.maximumRunSpeed = 20;
        
        Sloth* sloth = [[Sloth alloc] init];
        
        Turtle* turtle1 = [[Turtle alloc] init];
        Turtle* turtle2 = [[Turtle alloc] init];
        
        turtle1.maximumRunSpeed = 20;
        turtle1.maximumSwimSpeed = 10;
        turtle2.maximumRunSpeed = 20;
        turtle2.maximumSwimSpeed = 10;
        
        NSArray* array = [NSArray arrayWithObjects:jumper1, jumper2, runner1, runner2, runner3, swimmer1, swimmer2, swimmer3, swimmer4, sumoWrestler, triathlete1, triathlete2, triathlete3, cheetah1, cheetah2, crocodile1, crocodile2, dog1, dog2, dog3, dog4, kangaroo1, kangaroo2, kangaroo3, sloth, turtle1, turtle2, nil];
        
        for (id <Jumpers, Swimmers, Runners> obj in array) {
            
            if ([obj conformsToProtocol:@protocol(Jumpers)]) {
                obj.jump;
                
                if ([obj respondsToSelector:@selector(fall)]) {
                    obj.fall;
                }
                
            } else if ([obj conformsToProtocol:@protocol(Swimmers)]) {
                obj.swimm;
                
                if ([obj respondsToSelector:@selector(dive)]) {
                    obj.dive;
                }
                
            } else if ([obj conformsToProtocol:@protocol(Runners)]) {
                obj.run;
                
                if ([obj respondsToSelector:@selector(stumble)]) {
                    obj.stumble;
                }
                
            } else {
                NSLog(@"Oo");
            }
        }
    }
    return 0;
}
