//
//  MyCalendar.swift
//  LegendOfYou
//
//  Created by MATTHEW MCHUGHES on 3/26/15.
//  Copyright (c) 2015 MATTHEW MCHUGHES. All rights reserved.
//

import Foundation

class myCalendar{
    
    var calendar:[myDate] = []
    var isCreated:Bool = false
    
}

class myDate{
    
    var date:String = ""
    var dayOfWeek:String = ""
    var month:Int = 0
    var day:Int = 0
    var year:Int = 15
    var days:[String] = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    
}



class myMonth{
    
    var year:Int = 15
    var pos:[Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
    var namesofMonths:[String] = ["JANUARY", "FEBRUARY", "MARCH", "APRIL", "MAY", "JUNE", "JULY", "AUGUST", "SEPTEMBER", "OCTOBER", "NOVEMBER", "DECEMBER"]
    var numOfDays:[Int] = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    var startingDay2015:[String] = ["T", "S", "S", "W", "F", "M", "W", "Sa", "T", "R", "S", "T"]
    var startingDay2016:[String] = ["F", "M", "T", "F", "S", "W", "F", "M", "T", "Sa", "T", "R"]
}

func toString(m: myDate) -> String{
    
    var tempString:String = String(m.month)
    tempString += "/"
    tempString += String(m.day)
    tempString += "/"
    tempString += String(m.year)
    
    return tempString
}
