//
//  Forecast.swift
//  Prognozist
//
//  Created by Ацамаз Бицоев on 27/08/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import Foundation


class Forecast {
    
    
    init(mainTitle: String,
         additionalTitle: String,
         describtion: String,
         multiplier: String,
         partOfBank: String,
         dateString: String,
         author: String,
         authorsDescribtion: String) {
        
        self.mainTitle = mainTitle
        self.additionalTitle = additionalTitle
        self.describtion = describtion
        self.multiplier = multiplier
        self.partOfBank = partOfBank
        self.dateString = dateString
        self.author = author
        self.authorsDescribtion = authorsDescribtion
    }
    
    
    var mainTitle: String
    var additionalTitle: String
    var describtion: String
    var multiplier: String
    var partOfBank: String
    var dateString: String
    var author: String
    var authorsDescribtion: String
}
