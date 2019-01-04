//
//  ParentClass.h
//  FunctionsTest
//
//  Created by Алексей Малашенков on 02/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ParentClass : NSObject

+ (void) whoAreYou;

- (void) sayHello;
- (void) say:(NSString*) string;
- (void) say:(NSString*) string and:(NSString*) string2;
- (void) say:(NSString*) string and:(NSString*) string2 abdAfterThat:(NSString*) string3;
- (NSString*) saySomeNumberString;

- (NSString*) saySomething;

@end

NS_ASSUME_NONNULL_END
