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
                                     author: "Серега Иванов",
                                     authorsDescribtion: "Динамо Москва в отличной форме, игроки выйдут на матч в полном стартовом составе, в отличие от ФК Томбов, у которого отсутствует главный голкипер и еще несколько игроков основного состава. Последние 4 матча Динамо забивает по 3 мяча. Думаю победа будет легкой, всем удачи!"),
                            Forecast(mainTitle: "Главное описание",
                                     additionalTitle: "Дополнительное описание",
                                     describtion: "ставка",
                                     multiplier: "2.7",
                                     partOfBank:  "10%",
                                     dateString: "22/01/01, 16:00",
                                     author: "Иван Петров",
                                     authorsDescribtion: "Динамо Москва в отличной форме, игроки выйдут на матч в полном стартовом составе, в отличие от ФК Томбов, у которого отсутствует главный голкипер и еще несколько игроков основного состава. Последние 4 матча Динамо забивает по 3 мяча. Думаю победа будет легкой, всем удачи!"),
                            Forecast(mainTitle: "Главное описание",
                                     additionalTitle: "Дополнительное описание",
                                     describtion: "ставка",
                                     multiplier: "2.7",
                                     partOfBank:  "10%",
                                     dateString: "22/01/01, 16:00",
                                     author: "Дима Комба",
                                     authorsDescribtion: "Внимание Динамо Москва в отличной форме, игроки выйдут на матч в полном стартовом составе, в отличие от ФК Томбов, у которого отсутствует главный голкипер и еще несколько игроков основного состава. Последние 4 матча Динамо забивает по 3 мяча. Думаю победа будет легкой, всем удачи!")]
        
        NotificationCenter.default.post(name: NSNotification.Name(NotificationNames.forecastsFetched.rawValue),
                                        object: nil)
    }
    
    
}
