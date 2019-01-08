//
//  Student.h
//  ProtocolTest-Lesson-7
//
//  Created by Алексей Малашенков on 08/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject <Patient>

@property (strong, nonatomic) NSString* universityName;
@property (strong, nonatomic) NSString* name;

-(void) study;

@end

NS_ASSUME_NONNULL_END
