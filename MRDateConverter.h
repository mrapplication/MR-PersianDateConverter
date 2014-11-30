//  MRDateConverter.h
//  MR-PersianDateConverter
//
//  Created by MrApplication.com team on 11/30/14.
//  Copyright (c) 2014 Mr.Applcation.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MRDateConverter : NSObject

- (NSString *)convertDatewithFormat:(NSString *) dateString : (NSString *) dateFormat;

- (NSDate *)convertToNSDateFromString : (NSString *)dateString : (NSString *)dateFormat;

- (NSString *)convertFromNSDatetoString:(NSDate *) dateInput :(NSString *) dateFormat;

@end
