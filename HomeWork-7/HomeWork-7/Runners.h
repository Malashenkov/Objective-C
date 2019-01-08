//
//  Runners.h
//  HomeWork-7
//
//  Created by Алексей Малашенков on 08/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Runners <NSObject>

@required

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) NSInteger maximumRunSpeed;

-(BOOL) winner;
-(void) speedUp;
-(void) run;

@optional

-(NSString*) howIsYourFamily;
-(NSString*) howIsYourJob;
-(void) stumble;

@end


