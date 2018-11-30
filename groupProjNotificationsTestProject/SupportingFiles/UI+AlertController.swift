//
//  UI+AlertController.swift
//  groupProjNotificationsTestProject
//
//  Created by Ivan Ramirez on 11/29/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

import UIKit

class AlertControllerManager {
    
    static func presentAlertControllerWith(title: String, message: String?) -> UIAlertController {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let dissmissAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        
        
        [dissmissAction].forEach { alertController.addAction($0) }
        
       return alertController
    }
}

// present(alertController, animated:  true, completion: nil)
