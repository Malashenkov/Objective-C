//
//  Swimmer.h
//  HomeWork-7
//
//  Created by Алексей Малашенков on 08/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import "Sportsman.h"

NS_ASSUME_NONNULL_BEGIN

@interface Swimmer : Sportsman <Swimmers>

#pragma mark - Swimmers -
@property (assign, nonatomic) NSInteger maximumSwimSpeed;

-(void) swimm;

@end

NS_ASSUME_NONNULL_END
