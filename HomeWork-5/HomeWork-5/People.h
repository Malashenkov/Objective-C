//
//  People.h
//  HomeWork-5
//
//  Created by Алексей Малашенков on 04/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface People : NSObject

@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSString* gender;
@property (assign, nonatomic) float height;
@property (assign, nonatomic) float weight;

- (void) movement;

@end

NS_ASSUME_NONNULL_END
