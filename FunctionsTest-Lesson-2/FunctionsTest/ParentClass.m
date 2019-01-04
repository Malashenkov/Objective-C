//
//  ParentClass.m
//  FunctionsTest
//
//  Created by Алексей Малашенков on 02/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import "ParentClass.h"

@implementation ParentClass

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Instanse of parent class is init");
    }
    return self;
}

+ (void) whoAreYou {
    NSLog(@"I AM ParentClass %@", self);
}

- (void) sayHello {
    NSLog(@"Parent says hello! %@", self);
}

- (void) say:(NSString*) string {
    NSLog(@"%@", string);
}

- (void) say:(NSString*) string and:(NSString*) string2 {
    NSLog(@"%@, %@", string, string2);
}

- (void) say:(NSString*) string and:(NSString*) string2 abdAfterThat:(NSString*) string3 {
    NSLog(@"%@ %@ %@", string, string2, string3);
}

- (NSString*) saySomeNumberString {
    return [NSString stringWithFormat:@"%@", [NSDate date]];
}

- (NSString*) saySomething {
    
    NSString* string = [self saySomeNumberString];
    
    return string;
}

@end
