//
//  DailyForecastCell.swift
//  Prognozist
//
//  Created by Ацамаз Бицоев on 27/08/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import UIKit

class DailyForecastCell: UITableViewCell {
    
    
    @IBOutlet weak var labTitle: UILabel!
    @IBOutlet weak var viewMain: UIView!
    @IBOutlet weak var labMain: UILabel!
    @IBOutlet weak var labAuthor: UILabel!
    
    
    var forecast: Forecast!
    var timeOfDay: TimesOfDay!
    var shown: Bool = false {
        didSet {
            set()
        }
    }
    
    
    private var timer: Timer?
    private var timeRestForOpening: TimeInterval!
    
    
    func set() {
        
        let currentAuthor = forecast.author
        labAuthor.text = "Прогноз от: \(currentAuthor)"
        
        if shown {
            
            configureShownCell()
            
        } else {
            
            let nextForecastDate = ForecastTimes().getNextForecastTime(in: timeOfDay)
            timeRestForOpening = nextForecastDate.timeIntervalSinceNow
            self.timer?.invalidate()
            self.timer = nil
            self.timer = Timer.scheduledTimer(withTimeInterval: 1,
                                 repeats: true) { (timer) in
                                    if self.timeRestForOpening >= 16 * 60 * 60 {
                                        self.shown = true
                                    } else {
                                        self.timeRestForOpening -= 1
                                        self.labMain.text = "\(Int(self.timeRestForOpening))"
                                    }
            }
            
            configureHiddenCell()
            
        }
    }
    
    
    private func configureShownCell() {
        
        labTitle.textColor = Colors.yellowColor
        labMain.textColor = Colors.yellowColor
        viewMain.backgroundColor = Colors.lightBlueColor
        
        labMain.text = "Открыть"
        self.isUserInteractionEnabled = true
    }
    
    private func configureHiddenCell() {
        
        labTitle.textColor = Colors.grayColor
        labMain.textColor = .white
        viewMain.backgroundColor = Colors.grayColor
        
        self.isUserInteractionEnabled = false
    }
    

}
