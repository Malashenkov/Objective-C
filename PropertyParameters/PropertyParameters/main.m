//
//  main.m
//  PropertyParameters
//
//  Created by Алексей Малашенков on 03/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cars.h"
#import "Audi.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Cars* car = [[Cars alloc] init];
        NSLog(@"Car model is %@", car.carModel);
        NSLog(@"Horse power %d", car.horsePower);
        NSLog(@"Doors noumber is %d", car.doorsNumber);
        NSLog(@"Wheel number is %d", car.wheelNumber);
        NSLog(@"Transmission is %@", car.transmission);
        
        car.carStart;
        
        Audi* a1 = [[Audi alloc] init];
        
        NSLog(@"Audi model is %@", a1.carModel);
        NSLog(@"Audi horse power %d", a1.horsePower);
        NSLog(@"Audi doors noumber is %d", a1.doorsNumber);
        NSLog(@"Audi wheel number is %d", a1.wheelNumber);
        NSLog(@"Audi transmission is %@", a1.transmission);
        NSLog(@"Transmission is %@", a1.color);
        NSLog(@"Transmission is %@", a1.type);
    }
    return 0;
}
