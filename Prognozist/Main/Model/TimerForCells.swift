//
//  TimerForCells.swift
//  Prognozist
//
//  Created by Ацамаз Бицоев on 02/09/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import Foundation


class TimerForCells {
    
    
    private init() {}
    static let standard = TimerForCells()
    
    
    var timer: Timer?
    
    
    var timeRestMorning: TimeInterval = 0
    var timeRestAfternoon: TimeInterval = 0
    var timeRestEvening: TimeInterval = 0
    
    
    func startMorningTimer() {
        
        self.timer?.invalidate()
        self.timer = nil
        self.timer = Timer.scheduledTimer(withTimeInterval: 1,
                                          repeats: true) { (timer) in
                                            
                                            self.timeRestMorning = ForecastTimes().getNextForecastTime(in: .morning).timeIntervalSinceNow
                                            self.timeRestAfternoon = ForecastTimes().getNextForecastTime(in: .afternoon).timeIntervalSinceNow
                                            self.timeRestEvening = ForecastTimes().getNextForecastTime(in: .evening).timeIntervalSinceNow
                                            NotificationManager.post(.secondGone)
        }
    }
}
