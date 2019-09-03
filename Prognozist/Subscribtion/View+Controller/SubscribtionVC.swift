//
//  SubscribtionVC.swift
//  Prognozist
//
//  Created by Ацамаз Бицоев on 03/09/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import UIKit

class SubscribtionVC: UIViewController {
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        setGradientBackground()
    }
    
    
    private func setGradientBackground() {
        
        let color1 = Colors.darkBlueColor.cgColor
        let color2 = Colors.lightBlueColor.cgColor
        self.view.addGradient(colors: [color2, color1])
    }
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle { return .lightContent }

}
