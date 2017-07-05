//
//  ASJGeocode.m
//
//  Created by Ivan Gaydamakin on 05/07/2017.
//  Copyright © 2017 Sudeep Jaiswal. All rights reserved.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "ASJGeocode.h"

@implementation ASJGeocode

+ (NSArray<ASJGeocode *> *)geocodesForResponse:(NSDictionary *)response
{
    NSArray *results = response[@"results"];
    NSMutableArray *temp = [[NSMutableArray alloc] init];

    for (NSDictionary *dict in results)
    {
        NSDictionary *location = dict[@"geometry"][@"location"];
        NSNumber *latitude = location[@"lat"];
        NSNumber *longitude = location[@"lng"];
        CLLocationCoordinate2D locationCoordinate2D = CLLocationCoordinate2DMake(latitude.doubleValue, longitude.doubleValue);


//      TODO: implement class with full response. for now, just answer only coordinates
        ASJGeocode *geocode = [[ASJGeocode alloc] init];
        geocode.location = locationCoordinate2D;
        [temp addObject:geocode];
    }

    return [NSArray arrayWithArray:temp];
}

@end
