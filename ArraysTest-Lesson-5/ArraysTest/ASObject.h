//
//  ASObject.h
//  ArraysTest
//
//  Created by Алексей Малашенков on 04/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ASObject : NSObject

@property (strong, nonatomic) NSString* name;

- (void) action;

@end

NS_ASSUME_NONNULL_END
