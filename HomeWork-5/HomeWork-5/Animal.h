//
//  Animal.h
//  HomeWork-5
//
//  Created by Алексей Малашенков on 04/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Animal : NSObject

@property (strong, nonatomic) NSString* family;
@property (strong, nonatomic) NSString* species;
@property (strong, nonatomic) NSString* order;

- (void) movement;

@end

NS_ASSUME_NONNULL_END
