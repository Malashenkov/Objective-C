//
//  Swimmers.h
//  HomeWork-7
//
//  Created by Алексей Малашенков on 08/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Swimmers <NSObject>

@required

@property (assign, nonatomic) NSInteger maximumSwimSpeed;

-(void) swimm;

@optional

-(void) dive;

@end
