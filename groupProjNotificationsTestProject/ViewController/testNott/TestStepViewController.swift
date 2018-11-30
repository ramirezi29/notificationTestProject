//
//  TestStepViewController.swift
//  groupProjNotificationsTestProject
//
//  Created by Ivan Ramirez on 11/29/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

import UIKit

class TestStepViewController: UIViewController, TimerControllerDelegete {
    
    //The Final done Button will have this function in it
    //timerControllerManager.stopTimer()
    
    // MARK: - IBOUTlets
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    //
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    //
    @IBOutlet weak var image1View: UIImageView!
    @IBOutlet weak var image2View: UIImageView!
    @IBOutlet weak var image3View: UIImageView!
    //
    @IBOutlet weak var labelZERO: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    // an instance of that TimerControllerManager in a diff file
    let timerControllerManager = TimerControllerManager()
    var didViewActuallyLoad: Bool = true
    let timeKeepingId = "timerID"
      var userCompletedBoolNeededToToggle = true
    
    // MARK: - Life Cyles
    override func viewDidLoad() {
        super.viewDidLoad()
        timerControllerManager.delegate = self
        
        // MARK: - Simulating how the timer of 7 days will start once the app has started
        
        button1.setTitle("In Progress", for: .normal)
        button2.setTitle("In Progress", for: .normal)
        button3.setTitle("In Progress", for: .normal)
        button4.setTitle("In Progress", for: .normal)
        startTheTimerOnStartUp()
    }
    
    func startTheTimerOnStartUp(){
        timerControllerManager.startTimer(time: 5)
    }
    
    func updateMainTimerView(){
                labelZERO.text = timerControllerManager.timeAsString()
    }
    
    // MARK: - Delegate Functions of the timer
    func timerSecondTick() {
        labelZERO.text = timerControllerManager.timeAsString()
    }
    
    func timerCompleted() {
        let timerTick = AlertControllerManager.presentAlertControllerWith(title: "You got this!", message: "There hasnt been much progress, what can we do to help? Click Tips")
        present(timerTick, animated: true, completion: nil)
        timerControllerManager.scheduleLocalNotificationFor(identifier: timeKeepingId)
        
    }
    
    func timerStopped() {
        updateMainTimerView()
    }
  
    
    func timerForStepWith(checkBox imageView: UIImageView, buttonTitle: UIButton){
        
        if timerControllerManager.isOn && userCompletedBoolNeededToToggle == true {
            // set userCompleted to false in order to allow toggle effect
            userCompletedBoolNeededToToggle = false
            //Image
            imageView.image = UIImage(named: "complete")
            //button
            buttonTitle.setTitle("Completed", for: .normal)
            timerControllerManager.stopTimer()
            //time
            let restartCountDownTimer = TimeInterval(5)
            timerControllerManager.startTimer(time: restartCountDownTimer)
        } else {
            
            if userCompletedBoolNeededToToggle == false {
                userCompletedBoolNeededToToggle = true
                imageView.image = UIImage(named: "incomplete")
                buttonTitle.setTitle("In Progress", for: .normal)
                let restartCountDownTimer = TimeInterval(5)
                timerControllerManager.startTimer(time: restartCountDownTimer)
            }
        }
    }
    // MARK: - Actions
    @IBAction func button1Tapped(_ sender: Any) {
        timerForStepWith(checkBox: image1View, buttonTitle: button1)
        updateMainTimerView()
    }
    
    @IBAction func button2Tapped(_ sender: Any) {
        timerForStepWith(checkBox: image2View, buttonTitle: button2)
    }
    
    
    @IBAction func button3Tapped(_ sender: Any) {
    }
    @IBAction func button4Tapped(_ sender: Any) {
    }
    @IBAction func button5Tapped(_ sender: Any) {
    }
    @IBAction func button6Tapped(_ sender: Any) {
    }
    
}
