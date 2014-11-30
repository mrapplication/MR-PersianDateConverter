//
//  MRDateConverter.m
//  MR-PersianDateConverter
//
//  Created by MrApplication.com team on 11/30/14.
//  Copyright (c) 2014 Mr.Applcation.com. All rights reserved.
//

#import "MRDateConverter.h"

@implementation MRDateConverter

/*
 * Converts Gregorian date in NSString format to Persian date in NSString Format
 */
- (NSString *)convertDatewithFormat:(NSString *) dateString : (NSString *) dateFormat
{
    NSDateFormatter *format = [[NSDateFormatter alloc] init];
    [format setLocale:[NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"]];
    [format setDateFormat:dateFormat];
    NSDate *date = [format dateFromString:dateString];
    
    NSDateFormatter *f = [[NSDateFormatter alloc] init];
    NSLocale *iranLocale = [NSLocale localeWithLocaleIdentifier:@"fa_IR"];
    
    [f setLocale:iranLocale];
    NSCalendar *persian = [[NSCalendar alloc] initWithCalendarIdentifier:@"persian"];
    
    [f setCalendar:persian];
    [f setDateStyle:NSDateFormatterLongStyle];
    NSString *formattedDate = [f stringFromDate:date];
    
    return formattedDate;
}

/*
 * Converts Gregorian Date string of any format to NSDate
 */
- (NSDate *)convertToNSDateFromString : (NSString *)dateString : (NSString *)dateFormat
{
    //Format the Calendar
    NSDateFormatter *f = [[NSDateFormatter alloc] init];
    [f setLocale:[NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"]];
    [f setDateStyle:NSDateFormatterLongStyle];
    [f setDateFormat:dateFormat];
    
    NSDate *date = [f dateFromString:dateString];
    
    return date;
}

/*
 * Converts NSDate to NSString Date of any format
 */
- (NSString *)convertFromNSDatetoString:(NSDate *) dateInput :(NSString *) dateFormat
{
    //Format Date
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setLocale:[NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"]];
    [dateFormatter setDateFormat:@"YYYY/MM/dd HH:mm:ss"];
    
    //Format Calendar
    NSDateFormatter *f = [NSDateFormatter new];
    NSLocale *iranLocale = [NSLocale localeWithLocaleIdentifier:@"fa_IR"];
    [f setLocale:iranLocale];
    NSCalendar *persian = [[NSCalendar alloc] initWithCalendarIdentifier:@"persian"];
    [f setCalendar:persian];
    [f setDateStyle:NSDateFormatterLongStyle];
    
    NSString *formattedDate = [f stringFromDate:dateInput];
    
    return formattedDate;
}

@end
