//
//  ASJPhoto+Create.h
//  GooglePlacesDemo
//
//  Created by sudeep on 28/04/15.
//  Copyright (c) 2015 Sudeep Jaiswal. All rights reserved.
//

#import "ASJPhoto.h"

@interface ASJPhoto (Create)

+ (NSArray *)photosFromResponse:(NSDictionary *)response;

@end