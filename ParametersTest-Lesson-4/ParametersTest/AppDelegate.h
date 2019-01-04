//
//  AppDelegate.h
//  ParametersTest
//
//  Created by Алексей Малашенков on 03/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Object;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (weak, nonatomic) Object* object;

@end

