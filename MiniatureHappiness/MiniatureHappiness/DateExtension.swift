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
    
    
}
