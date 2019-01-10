//
//  Doctor.h
//  DeligatesTest
//
//  Created by Алексей Малашенков on 10/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@protocol PatientDelegate;

NS_ASSUME_NONNULL_BEGIN

@interface Doctor : NSObject <PatientDelegate>



@end

NS_ASSUME_NONNULL_END
