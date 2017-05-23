//
//  FlagViewController.swift
//  Guess That Logo
//
//  Created by Sage Hawk on 5/21/17.
//  Copyright © 2017 Sage Hawk. All rights reserved.
//

import UIKit

class FlagViewController: UIViewController {

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var bar1: UIImageView!
    @IBOutlet weak var bar2: UIImageView!
    @IBOutlet weak var bar3: UIImageView!
    @IBOutlet weak var bar4: UIImageView!
    
    struct Question {
        var Question : String!
        var Answers : [String]!
        var Answer : Int!
    }
    
    var QLabel = String()
    var questionNumber = Int()
    var Questions = [Question]()
    var QNumber = Int()
    var answerNumber = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Questions = [
            Question(Question: "America", Answers: ["Australia", "England", "Germany", "America"], Answer: 3),
            Question(Question: "Jamaica", Answers: ["Japan", "Afghanistan", "Jamaica", "Poland"], Answer: 2),
            Question(Question: "Germany", Answers: ["Britain", "Germany", "Denmark", "France"], Answer: 1),
            Question(Question: "Nepal", Answers: ["China", "Iceland", "Nepal", "Greenland"], Answer: 2),
            Question(Question: "Africa", Answers: ["Africa", "Mexico", "Nigeria", "Turkey"], Answer: 0),]


        PickQuestion()
    }
    
    
    func PickQuestion(){
        if Questions.count > 0{
            bar1.image = UIImage(named:"greyBar")
            bar2.image = UIImage(named:"greyBar")
            bar3.image = UIImage(named:"greyBar")
            bar4.image = UIImage(named:"greyBar")
            QNumber = 0
            QLabel = Questions[QNumber].Question
            answerNumber = Questions[QNumber].Answer
            for i in 0..<buttons.count{
                buttons[i].setTitle(Questions[QNumber].Answers[i], for: UIControlState.normal)
            }
            Questions.remove(at: QNumber)
        }
        else {
            NSLog("Done!")
        }
        print(QLabel)
        print(questionNumber)
        setLogo()
        GameWon()
    }
    
    @IBAction func btn1(_ sender: Any) {
        if answerNumber == 0{
            questionNumber += 1
            bar1.image = UIImage(named:"greenBar")
            let delayInSeconds = 0.5
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delayInSeconds) {
                self.PickQuestion()
            }
        }
        else {
            NSLog("Wrong!")
            bar1.image = UIImage(named:"redBar")
        }
    }
    @IBAction func btn2(_ sender: Any) {
        if answerNumber == 1{
            questionNumber += 1
            bar2.image = UIImage(named:"greenBar")
            let delayInSeconds = 0.5
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delayInSeconds) {
                self.PickQuestion()
            }
        }
        else {
            NSLog("Wrong!")
            bar2.image = UIImage(named:"redBar")
        }
    }
    @IBAction func btn3(_ sender: Any) {
        if answerNumber == 2{
            questionNumber += 1
            bar3.image = UIImage(named:"greenBar")
            let delayInSeconds = 0.5
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delayInSeconds) {
                self.PickQuestion()
            }
        }
        else {
            NSLog("Wrong!")
            bar3.image = UIImage(named:"redBar")
        }
    }
    @IBAction func btn4(_ sender: Any) {
        if answerNumber == 3{
            questionNumber += 1
            bar4.image = UIImage(named:"greenBar")
            let delayInSeconds = 0.5
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delayInSeconds) {
                self.PickQuestion()
            }
        }
        else {
            NSLog("Wrong!")
            bar4.image = UIImage(named:"redBar")
        }
    }
    
    func GameWon(){
        if questionNumber >= 5 {
            print("Game Won")
        }
    }
    
    func setLogo() {
        if QLabel == "America"{
            logoImageView.image = UIImage(named:"america.png")
        }
        if QLabel == "Jamaica"{
            logoImageView.image = UIImage(named:"jamaica.png")
        }
        if QLabel == "Germany"{
            logoImageView.image = UIImage(named:"germany.png")
        }
        if QLabel == "Nepal"{
            logoImageView.image = UIImage(named:"nepal.png")
        }
        if QLabel == "Africa"{
            logoImageView.image = UIImage(named:"africa.png")
        }
    }

}
