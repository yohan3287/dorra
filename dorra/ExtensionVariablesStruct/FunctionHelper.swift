//
//  FunctionHelper.swift
//  dorra
//
//  Created by Jacob Andrean on 27/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import Foundation

class FunctionHelper {
    func getDate(date: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm:ss"
        dateFormatter.timeZone = TimeZone.current
        dateFormatter.locale = Locale.current
        return dateFormatter.date(from: date)
    }
    func isDateInYesterday(_ date: Date) -> Bool {
        return true
    }
    func isDateInToday(_ date: Date) -> Bool {
        return true
    }
    func isDateInTomorrow(_ date: Date) -> Bool {
        return true
    }
}

