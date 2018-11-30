//
//  StepViewController.swift
//  groupProjNotificationsTestProject
//
//  Created by Ivan Ramirez on 11/28/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

import UIKit

class StepViewController: UIViewController {

    @IBOutlet weak var isCompleteButton: UIButton!
    
    weak var delegate: StepController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func completeButtonTapped(_ sender: Any) {
    }
    
   
}
