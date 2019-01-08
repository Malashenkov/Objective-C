//
//  Jumper.h
//  HomeWork-7
//
//  Created by Алексей Малашенков on 08/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import "Sportsman.h"

NS_ASSUME_NONNULL_BEGIN

@interface Jumper : Sportsman <Jumpers>

#pragma mark - Jumpers -
@property (assign, nonatomic) NSInteger maximumJumpHeight;
@property (assign, nonatomic) NSInteger numberOfAttempts;

-(void) jump;

@end

NS_ASSUME_NONNULL_END
