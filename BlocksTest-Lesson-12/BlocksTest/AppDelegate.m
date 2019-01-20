//
//  AppDelegate.m
//  BlocksTest
//
//  Created by Алексей Малашенков on 20/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import "AppDelegate.h"
#import "Objects.h"

typedef void (^OurTestBlock)(void);

@interface AppDelegate ()
@property (copy, nonatomic) OurTestBlock testBlock;

@end

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //[self testMethod];
    
//    void (^testBlock)(void);
//
//    testBlock = ^{
//        NSLog(@"test block!");
//    };
//
//    testBlock();
//
//    void (^testBlockWithParams)(NSString*, int) = ^(NSString* string, int intValue) {
//        NSLog(@"test block with param %@ %i", string, intValue);
//    };
//
//    testBlockWithParams(@"test",111);
//
//    NSString* (^testBlockWithReturnValueAndParams)(NSString*, int) = ^(NSString* string, int intValue) {
//        return [NSString stringWithFormat:@"test block with return and param %@ %i", string, intValue];
//    };
//
//    NSString* result = testBlockWithReturnValueAndParams(@"test",111);
//
//    NSLog(@"%@", result);
   
//    __block NSString* testString = @"How is it posible";
//
//    __block int i = 0;
//
//    void (^testBlock)(void);
//
//        testBlock = ^{
//            NSLog(@"test block!");
//            testString  = [NSString stringWithFormat:@"How is it possible? %i", ++i];
//            NSLog(@"%@", testString);
//        };
//
//    testBlock();
//    testBlock();
//    testBlock();
//    testBlock();
//    testBlock();
    
//    [self testBlocksMethod:^{
//        NSLog(@"Block");
//    }];
//
//    return YES;
//
//    OurTestBlock testBlock2 =^{
//        NSLog(@"test block!");
//    };
//
//    [self testBlocksMethod2:testBlock2];
    
    Objects* obj = [[Objects alloc] init];
    obj.name = @"OBJECT";
    
    OurTestBlock tb = ^ {
        NSLog(@"%@", obj.name);
    };
    
    tb();
    
    self.testBlock();
    
    return YES;
}

- (void) testBlocksMethod:(void (^)(void)) testBlock {
    
    NSLog(@"testBlockMethod");
    
    testBlock();
}

- (void) testBlocksMethod2:(OurTestBlock) testBlock {
    
    NSLog(@"testBlockMethod");
    
    testBlock();
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
