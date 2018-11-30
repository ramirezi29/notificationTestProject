//
//  StepController.swift
//  groupProjNotificationsTestProject
//
//  Created by Ivan Ramirez on 11/28/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

import Foundation

class StepController {
    static var steps : [Step] {
        
        let stepOne = Step(givenStep: "Complete Online Application")
        let stepTwo = Step(givenStep: "Fill Out Mailed Paper Worked")
        let stepThree = Step(givenStep: "Attend Breifing")
        
        return [stepOne, stepTwo, stepThree]
    }
}
