//
//  Student.h
//  HomeWork-8
//
//  Created by Алексей Малашенков on 09/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

@property (strong, nonatomic) NSString* firstName;
@property (strong, nonatomic) NSString* lastName;
@property (strong, nonatomic) NSString* welcomePhrase;

-(NSString*) description;

-(void) setFirstName: (NSString*) firstName andLastName: (NSString*) lastName andWelcomePhrase: (NSString*) welcomePhrase;

@end

NS_ASSUME_NONNULL_END
