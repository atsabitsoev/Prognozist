//
//  ForecastService.swift
//  Prognozist
//
//  Created by Ацамаз Бицоев on 27/08/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import Foundation
import FirebaseFirestore
import FirebaseCore


class ForecastService {
    
    
    private init() {}
    static let standard = ForecastService()
    
    
    var currentForecasts: [Forecast]?
    
    
    func getForecastsRequest(dateString: String) {
        
        let db = Firestore.firestore()
        
        let collectionRef = db.collection(dateString)
        
        collectionRef.getDocuments { (query, error) in
            
            print(dateString)
            
            guard let query = query else {
                print(error!.localizedDescription)
                self.currentForecasts = nil
                return
            }
            
            let newForecasts = query.documents.map({ (document) -> Forecast in
                let docData = document.data()
                return Forecast(mainTitle: docData["mainTitle"] as? String ?? "",
                                additionalTitle: docData["additionalTitle"] as? String ?? "",
                                describtion: docData["forecastName"] as? String ?? "",
                                multiplier: docData["multiplier"] as? String ?? "",
                                partOfBank: docData["partOfBank"] as? String ?? "",
                                dateString: docData["date"] as? String ?? "",
                                author: docData["authorsName"] as? String ?? "",
                                authorsDescribtion: docData["authorsDescribtion"] as? String ?? "")
            })
            
            self.currentForecasts = newForecasts.reversed()
            NotificationCenter.default.post(name: NSNotification.Name(NotificationNames.forecastsFetched.rawValue),
                                            object: nil)
        }
        
    }
    
    
}
