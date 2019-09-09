//
//  MainModel.swift
//  Prognozist
//
//  Created by Ацамаз Бицоев on 27/08/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import Foundation


class MainModel {
    
    
    func fetchForecasts() {
        
        let todayDate = Date()
        let calendar = Calendar(identifier: .gregorian)
        let timeZoneMoscow = TimeZone(identifier: "Europe/Moscow")!
        let dateComponentsToday = calendar.dateComponents(in: timeZoneMoscow, from: todayDate)
        guard let day = dateComponentsToday.day,
            let month = dateComponentsToday.month,
            let year = dateComponentsToday.year else {
                return
        }
        let dateStringToday = "\(day)/\(month)/\(year)"
        ForecastService.standard.getForecastsRequest(dateString: "9\\09\\2019")//dateStringToday)
    }
}
