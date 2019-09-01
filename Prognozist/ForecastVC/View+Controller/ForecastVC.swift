//
//  ForecastVC.swift
//  Prognozist
//
//  Created by Ацамаз Бицоев on 01/09/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import UIKit

class ForecastVC: UIViewController {
    
    
    @IBOutlet weak var labTitleMain: UILabel!
    @IBOutlet weak var labTitleSecond: UILabel!
    @IBOutlet weak var labForecastName: UILabel!
    @IBOutlet weak var labMultiplier: UILabel!
    @IBOutlet weak var labPercentsFromBank: UILabel!
    @IBOutlet weak var labDate: UILabel!
    @IBOutlet weak var textViewDescribtion: UITextView!
    
    
    var forecast: Forecast!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        setForecastValues()
    }
    
    
    private func setForecastValues() {
        
        labTitleMain.text = forecast.mainTitle
        labTitleSecond.text = forecast.additionalTitle
        labForecastName.text = forecast.describtion
        labMultiplier.text = forecast.multiplier
        labPercentsFromBank.text = forecast.partOfBank
        labDate.text = forecast.dateString
        textViewDescribtion.text = forecast.authorsDescribtion
    }

}
