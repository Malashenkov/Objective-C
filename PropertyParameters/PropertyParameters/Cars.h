//
//  Cars.h
//  PropertyParameters
//
//  Created by Алексей Малашенков on 03/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Cars : NSObject

@property (strong, nonatomic) NSString* carModel;
@property (assign, nonatomic) NSInteger horsePower;
@property (assign, nonatomic) NSInteger doorsNumber;
@property (assign, nonatomic) NSInteger wheelNumber;
@property (strong, nonatomic) NSString* transmission;

- (void) carStart;

@end

NS_ASSUME_NONNULL_END
