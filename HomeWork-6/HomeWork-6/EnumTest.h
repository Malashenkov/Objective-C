//
//  EnumTest.h
//  HomeWork-6
//
//  Created by Алексей Малашенков on 06/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef NSInteger MyTypeInt;

typedef enum {
    test1,
    test2,
    test3,
    test4
} Test;

@interface EnumTest : NSObject

@property (assign, nonatomic) Test example;

@end

NS_ASSUME_NONNULL_END
