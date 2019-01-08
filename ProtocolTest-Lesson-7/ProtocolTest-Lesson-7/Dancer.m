//
//  Dancer.m
//  ProtocolTest-Lesson-7
//
//  Created by Алексей Малашенков on 08/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import "Dancer.h"

@implementation Dancer

-(void) dance {
    
}

#pragma mark - Patient -

-(BOOL) areYouOK {
    
    BOOL ok = arc4random() % 2;
    
    NSLog(@"Is dancer %@ ok? %@", self.name, ok ? @"YES" : @"NO");
    
    return ok;
}

-(void) takePill {
    NSLog(@"Dancer %@ takes a pill", self.name);
}

-(void) makeShot {
    NSLog(@"Dancer %@ takes makes a shot", self.name);
}


@end
