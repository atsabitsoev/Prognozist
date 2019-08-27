//
//  MainVC.swift
//  Prognozist
//
//  Created by Ацамаз Бицоев on 27/08/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    
    private var model: MainModel!
    
    
    @IBOutlet weak var butVIP: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    
    var forecasts: [Forecast]?
    var itemTitles = ["Прогноз 1", "Прогноз 2", "Прогноз 3"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.model = MainModel(vc: self)
        
        model.fetchForecasts()
        setDefaultValues()
    }
    
    
    private func setDefaultValues() {
        
        configureNavigationBar()
        butVIP.layer.backgroundColor = Colors.roseColor.cgColor
        tableView.delaysContentTouches = false
    }
    
    private func configureNavigationBar() {
        
        self.navigationController?.navigationBar.backgroundColor = .clear
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(),
                                                                    for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }
    

}
