//
//  Patient.h
//  HomeWork-9
//
//  Created by Алексей Малашенков on 10/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PatientDelegate;

@interface Patient : NSObject

@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSString* throatColor;
@property (assign, nonatomic) float temperature;
@property (weak, nonatomic) id <PatientDelegate> delegate;

- (BOOL) howAreYou;
- (void) takePill;
- (void) makeShot;

@end

@protocol PatientDelegate
@required
- (void) patientFeelsBad:(Patient*) patient;
- (void) patient:(Patient*) patient hasQuestion:(NSString*) question;
@end

NS_ASSUME_NONNULL_END
