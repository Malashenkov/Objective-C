//
//  Student.m
//  ProtocolTest-Lesson-7
//
//  Created by Алексей Малашенков on 08/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import "Student.h"

@implementation Student

-(void) study {
    
}

#pragma mark - Patient -

-(BOOL) areYouOK {
    
    BOOL ok = arc4random() % 2;
    
    NSLog(@"Is student %@ ok? %@", self.name, ok ? @"YES" : @"NO");
    
    return ok;
}

-(void) takePill {
    NSLog(@"Student %@ takes a pill", self.name);
}

-(void) makeShot {
    NSLog(@"Student %@ takes makes a shot", self.name);
}

-(NSString*) howIsYourFamily {
    return @"My family is doing well!";
}

@end
