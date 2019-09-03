//
//  GradientViewExtension.swift
//  Prognozist
//
//  Created by Ацамаз Бицоев on 03/09/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import UIKit

extension UIView {
    
    func addGradient(colors: [CGColor]) {
        
        let gradient = CAGradientLayer()
        
        gradient.frame = self.frame
        
        gradient.colors = colors
        
        gradient.startPoint = CGPoint(x: 0, y: 1)
        gradient.endPoint = CGPoint(x: 1, y: 0)
        
        self.layer.insertSublayer(gradient, at: 0)
        
    }
    
}
