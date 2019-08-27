//
//  ForecastService.swift
//  Prognozist
//
//  Created by Ацамаз Бицоев on 27/08/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import Foundation


class ForecastService {
    
    
    private init() {}
    static let standard = ForecastService()
    
    
    var currentForecasts: [Forecast]?
    
    
    func getForecastsRequest() {
        
        currentForecasts = [Forecast(mainTitle: "Главное описание",
                                     additionalTitle: "Дополнительное описание",
                                     describtion: "ставка",
                                     multiplier: "2.7",
                                     partOfBank:  "10%",
                                     dateString: "22/01/01, 16:00",
                                     author: "Серега Иванов"),
                            Forecast(mainTitle: "Главное описание",
                                     additionalTitle: "Дополнительное описание",
                                     describtion: "ставка",
                                     multiplier: "2.7",
                                     partOfBank:  "10%",
                                     dateString: "22/01/01, 16:00",
                                     author: "Иван Петров"),
                            Forecast(mainTitle: "Главное описание",
                                     additionalTitle: "Дополнительное описание",
                                     describtion: "ставка",
                                     multiplier: "2.7",
                                     partOfBank:  "10%",
                                     dateString: "22/01/01, 16:00",
                                     author: "Дима Комба")]
    }
    
    
}
