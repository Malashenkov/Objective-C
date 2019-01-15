//
//  AppDelegate.m
//  DictionaryTest
//
//  Created by Алексей Малашенков on 09/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSDictionary* dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:
                                @"Petrov", @"lastName",
                                @"Valiliy", @"name",
                                [NSNumber numberWithInt:25], @"age",
                                nil];
    
//    NSDictionary* dictionary2 = [NSDictionary dictionaryWithObjectsAndKeys:, nil];
    
    NSInteger number = 25;
    
    NSDictionary* dictionary3 = @{@"lastName": @"Petrov", @"name": @"Valiliy", @"age": @(number)};
    
    NSLog(@"%@", dictionary3);
    
    NSLog(@"name = %@, lastname = %@, age = %@",
          [dictionary objectForKey:@"name"],
          [dictionary objectForKey:@"lastName"],
          [dictionary objectForKey:@"age"]);
    
    for (NSString* key in [dictionary3 allKeys]) {
        id obj = [dictionary3 objectForKey:key];
        NSLog(@"key = %@, value = %@", key, obj);
    }
    
    return YES;
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
