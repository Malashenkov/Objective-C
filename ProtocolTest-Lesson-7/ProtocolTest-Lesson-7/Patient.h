//
//  Patient.h
//  ProtocolTest-Lesson-7
//
//  Created by Алексей Малашенков on 08/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Patient <NSObject>

@required

@property (strong, nonatomic) NSString* name;

-(BOOL) areYouOK;
-(void) takePill;
-(void) makeShot;

@optional
-(NSString*) howIsYourFamily;
-(NSString*) howIsYourJob;

@end
