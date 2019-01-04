//
//  Audi.h
//  PropertyParameters
//
//  Created by Алексей Малашенков on 03/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import "Cars.h"

NS_ASSUME_NONNULL_BEGIN

@interface Audi : Cars

@property (strong, nonatomic) NSString* color;
@property (strong, nonatomic) NSString* type;

@end

NS_ASSUME_NONNULL_END
