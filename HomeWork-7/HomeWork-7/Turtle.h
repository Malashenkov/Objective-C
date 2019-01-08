//
//  Turtle.h
//  HomeWork-7
//
//  Created by Алексей Малашенков on 08/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import "Animal.h"

NS_ASSUME_NONNULL_BEGIN

@interface Turtle : Animal <Swimmers, Runners>

#pragma mark - Swimmers -
@property (assign, nonatomic) NSInteger maximumSwimSpeed;

-(void) swimm;

#pragma mark - Runners -
@property (assign, nonatomic) NSInteger maximumRunSpeed;

-(void) speedUp;
-(void) run;
-(void) stumble;
@end

NS_ASSUME_NONNULL_END
