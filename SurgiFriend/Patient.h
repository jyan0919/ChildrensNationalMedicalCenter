//
//  Patient.h
//  SurgiFriend
//
//  Created by Jessie on 1/15/13.
//  Copyright (c) 2013 Jessie Yan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Patient : NSObject

@property (nonatomic, strong) NSString *lastname;
@property (nonatomic, strong) NSString *firstname;
@property (nonatomic, strong) NSString *dob;
@property (nonatomic, strong) NSString *address;
@property (nonatomic, strong) NSString *insurance;
@property (nonatomic, strong) NSString *guardian;
@property (nonatomic, strong) NSString *diagnosis;
@property (nonatomic, strong) NSString *password;

@end
