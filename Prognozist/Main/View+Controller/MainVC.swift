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
    let timesOfDay: [TimesOfDay] = [.morning, .afternoon, .evening]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.model = MainModel()
        addObservers()
        
        model.fetchForecasts()
        setDefaultValues()
    }
    
    
    private func addObservers() {
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(setNewForecasts),
                                               name: NSNotification.Name(NotificationNames.forecastsFetched.rawValue),
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(fetchForecasts),
                                               name: NSNotification.Name(NotificationNames.shouldUpdateForecasts.rawValue),
                                               object: nil)
    }
    
    
    @objc
    private func fetchForecasts() {
        model.fetchForecasts()
    }
    
    @objc
    private func setNewForecasts() {
        guard let newForecasts = ForecastService.standard.currentForecasts else { return }
        self.forecasts = newForecasts
        tableView.reloadData()
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
