//
//  MainModel.swift
//  Prognozist
//
//  Created by Ацамаз Бицоев on 27/08/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import Foundation


class MainModel {
    
    
    init(vc: MainVC) {
        self.vc = vc
    }
    
    private var vc: MainVC!
    
    
    func fetchForecasts() {
        ForecastService.standard.getForecastsRequest()
        vc.forecasts = ForecastService.standard.currentForecasts!
    }
}
