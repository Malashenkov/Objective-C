//
//  Jumper.h
//  HomeWork-7
//
//  Created by Алексей Малашенков on 08/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Jumpers <NSObject>

@required

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) NSInteger maximumJumpHeight;
@property (assign, nonatomic) NSInteger numberOfAttempts;

-(BOOL) winner;
-(void) jump;
-(void) speedUp;

@optional
-(NSString*) howIsYourFamily;
-(NSString*) howIsYourJob;
-(void) fall;

@end
