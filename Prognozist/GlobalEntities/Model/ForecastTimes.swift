//
//  ForecastTimes.swift
//  Prognozist
//
//  Created by Ацамаз Бицоев on 27/08/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import Foundation


class ForecastTimes {
    
    
    let morningTime = (0,0,0)
    let afternoonTime = (8,0,0)
    let eveningTime = (16,0,0)
    
    
    func getNextForecastTime(in timeOfDay: TimesOfDay) -> Date {
        
        let currentDate = Date()
        var calendar = Calendar.current
        
        var time: (Int, Int, Int)
        
        switch timeOfDay {
        case .morning:
            time = morningTime
        case .afternoon:
            time = afternoonTime
        case .evening:
            time = eveningTime
        }
        
        calendar.timeZone = TimeZone(identifier: "Europe/Moscow")!
        let todayForecastDate = calendar.date(bySettingHour: time.0, minute: time.1, second: time.2, of: currentDate)!
        if currentDate.timeIntervalSince(todayForecastDate) > 0 {
            let tomorrowForecastDate = todayForecastDate.addingTimeInterval(24 * 60 * 60)
            return tomorrowForecastDate
        } else {
            return todayForecastDate
        }
    }
    
}


enum TimesOfDay {
    case morning
    case afternoon
    case evening
}
