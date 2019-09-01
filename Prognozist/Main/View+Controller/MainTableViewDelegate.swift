//
//  MainTableViewDelegate.swift
//  Prognozist
//
//  Created by Ацамаз Бицоев on 27/08/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import Foundation
import UIKit


extension MainVC: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let forecasts = forecasts else { return 0 }
        return forecasts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let forecasts = self.forecasts else { return UITableViewCell() }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "DailyForecastCell") as! DailyForecastCell
        
        cell.forecast = forecasts[indexPath.row]
        cell.timeOfDay = timesOfDay[indexPath.row]
        cell.set()
        cell.labTitle.text = "Прогноз \(indexPath.row + 1)"
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Forecast", bundle: nil)
        let forecastVC = storyboard.instantiateViewController(withIdentifier: "ForecastVC") as! ForecastVC
        forecastVC.forecast = forecasts![indexPath.row]
        forecastVC.title = "\(indexPath.row + 1)"
        self.navigationController?.show(forecastVC, sender: nil)
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 187
    }
    
    
}
