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
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
