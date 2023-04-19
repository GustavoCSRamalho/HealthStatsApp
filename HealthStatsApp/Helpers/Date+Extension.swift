//
//  Date+Extension.swift
//  HealthStatsApp
//
//  Created by Gustavo Ramalho on 17/04/23.
//

import Foundation

extension Date {
    
    static func firstDayOfWeek() -> Date {
        return Calendar(identifier: .iso8601).date(from: Calendar(identifier: .iso8601).dateComponents([.yearForWeekOfYear, .weekOfYear], from: Date())) ?? Date()
    }
}
