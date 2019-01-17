//
//  AppDelegate.m
//  SelectorsTest-Lesson-11
//
//  Created by Алексей Малашенков on 17/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import "AppDelegate.h"
#import "Objects.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
//    Objects* obj = [[Objects alloc] init];
//
//    SEL selector1 = @selector(testMethod);
//    SEL selector2 = @selector(testMethod:);
//    SEL selector3 = @selector(testMethod:parametr2:);
//
//    [self performSelector:selector1];
//    [obj performSelector:selector1];
//
//    NSString* secret = [obj performSelector:@selector(superSecretText)];
//
//    NSLog(@"%@", secret);
//
//    [self performSelector:selector2 withObject:@"testString"];
//    [self performSelector:selector3 withObject:@"testString" withObject:@"testString2"];
//    [self performSelector:selector1 withObject:nil afterDelay:5.f];
//    [self performSelector:@selector(testMethod:) withObject:[NSNumber numberWithInteger:11]];
    
    //NSString* a = NSStringFromSelector(selector1);
    //SEL sel = NSSelectorFromString(a);
    
    NSString* str =[self testMethodParametr1:2 parametr2:3.1f parametr3:5.5f];
    
    NSLog(@"%@", str);
    
    return YES;
}

- (void) testMethodParametr1:(int) intValue {
    NSLog(@"testMethodParametr1 %i", intValue);
}

- (void) testMethod:(NSString*) string {
    NSLog(@"testMethod: %@", string);
}

- (void) testMethod:(NSString*) string parametr2:(NSString*) string2 {
    NSLog(@"testMethod:param2 %@, %@", string, string2);
}

- (void) testMethod {
    NSLog(@"testMethod");
}

- (NSString*) testMethodParametr1:(int) intValue parametr2:(float) floatValue parametr3:(double) doubleValue {
    
    return [NSString stringWithFormat:@"testMethodParametr1 %i param2 %f param3 %f", intValue, floatValue, doubleValue];
    
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
