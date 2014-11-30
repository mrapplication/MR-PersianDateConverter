MR-PersianDateConverter
=======================

A lightweight and easy to use objective-c date converter based on Persian/Gregorian calendars.

It consists of three easy to use methods to:

   - (NSString *)convertDatewithFormat:(NSString *) dateInput : (NSString *) Format : Converts Gregorian formatted date strings      to Persian formatted date strings
   - (NSDate *) convertToNSDateFromString : (NSString *)dateString : (NSString *)dateFormat : Converts Gregorian formatted date      strings to NSDate.
   - (NSString *)convertFromNSDatetoString:(NSDate *) dateInput :(NSString *) dateFormat : Converts NSDate to Persian formatted      date string.

Usage:
=======================
1) Import both the MRDateConverter.h and MRDateConverter.m to your project.
2) Create an instance of MrDateConverter.

Feel free to post any bugs or questions in the Issues.
