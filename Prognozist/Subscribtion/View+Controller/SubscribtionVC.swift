//
//  SubscribtionVC.swift
//  Prognozist
//
//  Created by Ацамаз Бицоев on 03/09/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import UIKit

class SubscribtionVC: UIViewController {
    
    
    @IBOutlet weak var viewWeekSubscribtion: UIButton!
    @IBOutlet weak var viewMonthSubscribtion: UIButton!
    @IBOutlet weak var viewYearSubscribtion: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        setGradientBackground()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        setRoundedViewsSubscribtions()
    }
    
    
    private func setGradientBackground() {
        
        let color1 = Colors.darkBlueColor.cgColor
        let color2 = Colors.lightBlueColor.cgColor
        self.view.addGradient(colors: [color2, color1])
    }
    
    private func setRoundedViewsSubscribtions() {
        
        viewWeekSubscribtion.layer.cornerRadius = viewWeekSubscribtion.bounds.height / 2
        viewMonthSubscribtion.layer.cornerRadius = viewMonthSubscribtion.bounds.height / 2
        viewYearSubscribtion.layer.cornerRadius = viewYearSubscribtion.bounds.height / 2
    }
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle { return .lightContent }

}
