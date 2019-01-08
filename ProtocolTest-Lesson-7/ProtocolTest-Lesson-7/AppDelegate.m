//
//  AppDelegate.m
//  ProtocolTest-Lesson-7
//
//  Created by Алексей Малашенков on 08/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import "AppDelegate.h"
#import "Patient.h"
#import "Student.h"
#import "Dancer.h"
#import "Developer.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    Dancer* dancer1 = [[Dancer alloc] init];
    Dancer* dancer2 = [[Dancer alloc] init];
    
    Student* student1 = [[Student alloc] init];
    Student* student2 = [[Student alloc] init];
    Student* student3 = [[Student alloc] init];
    
    Developer* developer1 = [[Developer alloc] init];
    
    dancer1.name = @"dancer1";
    dancer2.name = @"dancer2";
    
    student1.name = @"student1";
    student2.name = @"student2";
    student3.name = @"student3";
    
    developer1.name = @"developer1";
    
    NSObject* fake = [[NSObject alloc] init];
    
    NSArray* patients = [NSArray arrayWithObjects:dancer1, dancer2, student1, student2, student3, developer1, fake, nil];
    
    for (id <Patient> patient in patients) {
        
        if ([patient conformsToProtocol:@protocol(Patient)]) {
            NSLog(@"Patient name = %@", patient.name);
            
            if ([patient respondsToSelector:@selector(howIsYourFamily)]) {
                NSLog(@"How is your family? \n%@", [patient howIsYourFamily]);
            }
            
            if ([patient respondsToSelector:@selector(howIsYourJob)]) {
                NSLog(@"How is your job? \n%@", [patient howIsYourJob]);
            }
            
            if (![patient areYouOK]) {
                [patient takePill];
            }
            
            if (![patient areYouOK]) {
                [patient makeShot];
            }
        } else {
            NSLog(@"FAKE");
        }
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