//
//  NCTest.swift
//  groupProjNotificationsTestProject
//
//  Created by Ivan Ramirez on 11/29/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

import Foundation

class TestyTest {
    
    var isCompleted: Bool
    var countDownDate: Date
    let uuid: String
    
    
    init(isComplete: Bool = false, countDownDate: Date, uuid: String = UUID().uuidString) {
        self.isCompleted = isComplete
        self.countDownDate = countDownDate
        self.uuid = uuid
      
    }
    var countDownDateAsString: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .none
        formatter.timeStyle = .short
        return formatter.string(from: countDownDate)
    }
}
