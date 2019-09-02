//
//  NotificationManager.swift
//  Prognozist
//
//  Created by Ацамаз Бицоев on 02/09/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import Foundation


class NotificationManager {
    
    static func post(_ notificationName: NotificationNames) {
        NotificationCenter.default.post(name: NSNotification.Name(notificationName.rawValue),
                                        object: nil)
    }
}
