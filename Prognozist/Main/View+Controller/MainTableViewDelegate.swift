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
        
        cell.labTitle.textColor = Colors.grayColor
        cell.labMain.textColor = Colors.yellowColor
        cell.viewMain.backgroundColor = Colors.lightBlueColor
        cell.labAuthor.textColor = Colors.grayColor
        
        cell.labTitle.text = itemTitles[indexPath.row]
        let currentAuthor = forecasts[indexPath.row].author
        cell.labAuthor.text = "Прогноз от: \(currentAuthor)"
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 187
    }
    
    
}
