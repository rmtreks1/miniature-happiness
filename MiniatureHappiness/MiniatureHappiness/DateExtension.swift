//
//  DateExtension.swift
//  MiniatureHappiness
//
//  Created by Roshan Mahanama on 9/06/2015.
//  Copyright (c) 2015 RMTREKS. All rights reserved.
//

import Foundation

extension NSDate {

    // month day year e.g. Jul 14, 2014
    func monthDayYear() -> String{
        
        let formatter = NSDateFormatter()
        formatter.dateStyle = NSDateFormatterStyle.MediumStyle
        let dateString = formatter.stringFromDate(self)
        
        return dateString
    }
    
    
    
//    func isEqualToDateIgnoringTime(date: NSDate) -> Bool
//    {
//
//        let comp1 = self.com
//        let comp2 = date
//        
////        let comp1 = NSDate.components(fromDate: self)
////        let comp2 = NSDate.components(fromDate: date)
//        return ((comp1.year == comp2.year) && (comp1.month == comp2.month) && (comp1.day == comp2.day))
//    }
    
    
    // code snippet from: https://gist.github.com/lukewakeford/4e6cda958c252017e112
    class func areDatesSameDay(dateOne:NSDate,dateTwo:NSDate) -> Bool {
        var calender = NSCalendar.currentCalendar()
        let flags: NSCalendarUnit = .CalendarUnitDay | .CalendarUnitMonth | .CalendarUnitYear
        var compOne: NSDateComponents = calender.components(flags, fromDate: dateOne)
        var compTwo: NSDateComponents = calender.components(flags, fromDate: dateTwo);
        return (compOne.day == compTwo.day && compOne.month == compTwo.month && compOne.year == compTwo.year);
    }
    
}
