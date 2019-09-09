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
            if shown {
                NotificationManager.post(.shouldUpdateForecasts)
            }
        }
    }
    
    override func didMoveToSuperview() {
        set()
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(updateTimer),
                                               name: NSNotification.Name(rawValue: NotificationNames.secondGone.rawValue),
                                               object: nil)
        TimerForCells.standard.startMorningTimer()
    }
    
    
    func set() {
        
        let currentAuthor = forecast.author
        labAuthor.text = "Прогноз от: \(currentAuthor)"
        
        shown ? configureShownCell() : configureHiddenCell()
    }
    
    
    @objc
    private func updateTimer() {
        
        var seconds = 0
        
        switch timeOfDay! {
        case .morning:
            seconds = Int(TimerForCells.standard.timeRestMorning)
        case .afternoon:
            seconds = Int(TimerForCells.standard.timeRestAfternoon)
        case .evening:
            seconds = Int(TimerForCells.standard.timeRestEvening)
        }
        
        if seconds > 16*60*60 {
            self.shown = true
        } else {
            self.shown = false
            let timeString = formattedSecondsString(from: seconds)
            self.labMain.text = timeString
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
    
    
    private func formattedSecondsString(from seconds: Int) -> String {
        
        let hours = seconds / 3600
        let minutes = (seconds - hours * 3600) / 60
        let newSeconds = seconds - hours * 3600 - minutes * 60
        
        var hoursString = ""
        var minutesString = ""
        var secondsString = ""
        hoursString = hours < 10 ? "0\(hours)" : "\(hours)"
        minutesString = minutes < 10 ? "0\(minutes)" : "\(minutes)"
        secondsString = newSeconds < 10 ? "0\(newSeconds)" : "\(newSeconds)"
        
        return "\(hoursString):\(minutesString):\(secondsString)"
    }
    

}
