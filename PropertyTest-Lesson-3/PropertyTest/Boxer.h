//
//  Boxer.h
//  PropertyTest
//
//  Created by Алексей Малашенков on 03/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Boxer : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) NSInteger age;
@property (assign, nonatomic) float height;
@property (assign, nonatomic) float weight;

- (NSInteger) howOldAreYou;

@end

NS_ASSUME_NONNULL_END
