//
//  Footballer.h
//  HomeWork-5
//
//  Created by Алексей Малашенков on 04/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import "People.h"

NS_ASSUME_NONNULL_BEGIN

@interface Footballer : People

@property (strong, nonatomic) NSString* clubName;
@property (strong, nonatomic) NSString* posit;

- (void) scoreGoal;

@end

NS_ASSUME_NONNULL_END
