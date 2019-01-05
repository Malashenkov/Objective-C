//
//  Student.h
//  TypesTest-Lesson-6
//
//  Created by Алексей Малашенков on 05/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum {
    GenderMale,
    GenderFemale
} Gender;

typedef NSInteger Taburetka;

@interface Student : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) Gender gender;

- (int) test:(NSInteger*) test testPointer:(NSInteger*) testPointer;

@end

NS_ASSUME_NONNULL_END
