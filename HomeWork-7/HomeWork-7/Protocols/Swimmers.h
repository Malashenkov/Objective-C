//
//  Swimmers.h
//  HomeWork-7
//
//  Created by Алексей Малашенков on 08/01/2019.
//  Copyright © 2019 Алексей Малашенков. All rights reserved.
//

@protocol Swimmers <NSObject>

@required

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) NSInteger maximumSwimSpeed;

-(BOOL) winner;
-(void) speedUp;
-(void) dive;

@optional
-(NSString*) howIsYourFamily;
-(NSString*) howIsYourJob;

@end
