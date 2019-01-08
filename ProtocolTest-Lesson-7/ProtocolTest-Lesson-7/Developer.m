//
//  Developer.m
//  ProtocolTest-Lesson-7
//
//  Created by Алексей Малашенков on 08/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import "Developer.h"

@implementation Developer

-(void) work {
    
}

#pragma mark - Patient -

-(BOOL) areYouOK {
    
    BOOL ok = arc4random() % 2;
    
    NSLog(@"Is developer %@ ok? %@", self.name, ok ? @"YES" : @"NO");
    
    return ok;
}

-(void) takePill {
    NSLog(@"Developer %@ takes a pill", self.name);
}

-(void) makeShot {
    NSLog(@"Developer %@ takes makes a shot", self.name);
}

-(NSString*) howIsYourJob {
    return @"My job is awesome!";
}

@end
