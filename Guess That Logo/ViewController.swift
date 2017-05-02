//
//  ViewController.swift
//  Guess That Logo
//
//  Created by Sage Hawk on 4/12/17.
//  Copyright © 2017 Sage Hawk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var carButton1: UIButton!
    @IBOutlet weak var carButton2: UIButton!
    @IBOutlet weak var carButton3: UIButton!
    @IBOutlet weak var carButton4: UIButton!
    
    @IBOutlet weak var flagButton1: UIButton!
    @IBOutlet weak var flagButton2: UIButton!
    @IBOutlet weak var flagButton3: UIButton!
    @IBOutlet weak var flagButton4: UIButton!
    
    @IBOutlet weak var heroButton1: UIButton!
    @IBOutlet weak var heroButton2: UIButton!
    @IBOutlet weak var heroButton3: UIButton!
    @IBOutlet weak var heroButton4: UIButton!
    
    @IBOutlet weak var companyButton1: UIButton!
    @IBOutlet weak var companyButton2: UIButton!
    @IBOutlet weak var companyButton3: UIButton!
    @IBOutlet weak var companyButton4: UIButton!
    
    
    @IBOutlet weak var carLogoImageView: UIImageView!
    @IBOutlet weak var carAnswerTab1: UIImageView!
    @IBOutlet weak var carAnswerTab2: UIImageView!
    @IBOutlet weak var carAnswerTab3: UIImageView!
    @IBOutlet weak var carAnswerTab4: UIImageView!
    
    @IBOutlet weak var flagLogoImageView: UIImageView!
    @IBOutlet weak var flagAnswerTab1: UIImageView!
    @IBOutlet weak var flagAnswerTab2: UIImageView!
    @IBOutlet weak var flagAnswerTab3: UIImageView!
    @IBOutlet weak var flagAnswerTab4: UIImageView!
    
    @IBOutlet weak var heroLogoImageView: UIImageView!
    @IBOutlet weak var heroAnswerTab1: UIImageView!
    @IBOutlet weak var heroAnswerTab2: UIImageView!
    @IBOutlet weak var heroAnswerTab3: UIImageView!
    @IBOutlet weak var heroAnswerTab4: UIImageView!
    
    @IBOutlet weak var companyLogoImageView: UIImageView!
    @IBOutlet weak var companyAnswerTab1: UIImageView!
    @IBOutlet weak var companyAnswerTab2: UIImageView!
    @IBOutlet weak var companyAnswerTab3: UIImageView!
    @IBOutlet weak var companyAnswerTab4: UIImageView!
    
    var CorrectAnswer = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Hide()
        randomQuestion()
    }
    
    func randomQuestion(){
        
        var RandomNumber = arc4random() % 4
        RandomNumber += 1
        
        switch(RandomNumber){
        //Cases will fill in for random questions for the quiz.
        case 1:
            
            carButton1.setTitle("Blue", for:UIControlState.normal)
            carButton2.setTitle("Orange", for:UIControlState.normal)
            carButton3.setTitle("Red", for:UIControlState.normal)
            carButton4.setTitle("Purple", for:UIControlState.normal)
            CorrectAnswer = "3"
            break
        case 2:
            
            button1.setTitle("December 25th", for:UIControlState.normal)
            button2.setTitle("December 24th", for:UIControlState.normal)
            button3.setTitle("November 24th", for:UIControlState.normal)
            button4.setTitle("November 25th", for:UIControlState.normal)
            CorrectAnswer = "1"
            break
        case 3:
            
            button1.setTitle("America", for:UIControlState.normal)
            button2.setTitle("Canada", for:UIControlState.normal)
            button3.setTitle("Sweden", for:UIControlState.normal)
            button4.setTitle("Germany", for:UIControlState.normal)
            CorrectAnswer = "4"
            break
        case 4:
            
            button1.setTitle("364", for:UIControlState.normal)
            button2.setTitle("217", for:UIControlState.normal)
            button3.setTitle("12", for:UIControlState.normal)
            button4.setTitle("365", for:UIControlState.normal)
            CorrectAnswer = "1"
            break
        case 5:
            
            button1.setTitle("1890", for:UIControlState.normal)
            button2.setTitle("1016", for:UIControlState.normal)
            button3.setTitle("1752", for:UIControlState.normal)
            button4.setTitle("1283", for:UIControlState.normal)
            CorrectAnswer = "1"
            break
        case 6:
            
            button1.setTitle("Illinois", for:UIControlState.normal)
            button2.setTitle("Colorado", for:UIControlState.normal)
            button3.setTitle("Oklahoma", for:UIControlState.normal)
            button4.setTitle("Florida", for:UIControlState.normal)
            CorrectAnswer = "3"
        case 7:
            
            button1.setTitle("Oklahoma", for:UIControlState.normal)
            button2.setTitle("Alabama", for:UIControlState.normal)
            button3.setTitle("Maryland", for:UIControlState.normal)
            button4.setTitle("New York", for:UIControlState.normal)
            CorrectAnswer = "2"
        case 8:
            
            button1.setTitle("June 26, 1870", for:UIControlState.normal)
            button2.setTitle("December 25th 1902", for:UIControlState.normal)
            button3.setTitle("April 18th 1823", for:UIControlState.normal)
            button4.setTitle("December 25th 1762", for:UIControlState.normal)
            CorrectAnswer = "1"
            
        default:
            break
        }
        
    }
    
    func Hide(){
        //LabelEnd.isHidden = true
        //NextButton.isHidden = true
    }
    func UnHide(){
        //LabelEnd.isHidden = false
        //NextButton.isHidden = false
    }
    
    @IBAction func carButton1(_ sender: Any) {
    }
    @IBAction func carButton2(_ sender: Any) {
    }
    @IBAction func carButton3(_ sender: Any) {
    }
    @IBAction func carButton4(_ sender: Any) {
    }
    
    @IBAction func flagButton1(_ sender: Any) {
    }
    @IBAction func flagButton2(_ sender: Any) {
    }
    @IBAction func flagButton3(_ sender: Any) {
    }
    @IBAction func flagButton4(_ sender: Any) {
    }

    @IBAction func heroButton1(_ sender: Any) {
    }
    @IBAction func heroButton2(_ sender: Any) {
    }
    @IBAction func heroButton3(_ sender: Any) {
    }
    @IBAction func heroButton4(_ sender: Any) {
    }
    
    @IBAction func companyButton1(_ sender: Any) {
    }
    @IBAction func companyButton2(_ sender: Any) {
    }
    @IBAction func companyButton3(_ sender: Any) {
    }
    @IBAction func companyButton4(_ sender: Any) {
    }
    
}
