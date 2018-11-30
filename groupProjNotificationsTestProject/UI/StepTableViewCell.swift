//
//  StepTableViewCell.swift
//  groupProjNotificationsTestProject
//
//  Created by Ivan Ramirez on 11/28/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

import UIKit

class StepTableViewCell: UITableViewCell {
    
    @IBOutlet weak var stepLabel: UILabel!
    
    @IBOutlet weak var isCompleteSwitch: UISwitch!
    
    
    // Landing Pad
    var step: Step? {
        didSet {
            updateViews()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func updateViews() {
        guard let step = step else {return}
        stepLabel.text = step.givenStep
    }
    
}
