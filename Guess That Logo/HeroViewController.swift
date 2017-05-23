//
//  HeroViewController.swift
//  Guess That Logo
//
//  Created by Sage Hawk on 5/21/17.
//  Copyright © 2017 Sage Hawk. All rights reserved.
//

import UIKit

class HeroViewController: UIViewController {

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
            Question(Question: "Spiderman", Answers: ["Aquaman", "Static", "Spiderman", "Falcon"], Answer: 2),
            Question(Question: "Batman", Answers: ["Ironman", "Robin", "Hulk", "Batman"], Answer: 3),
            Question(Question: "Flash", Answers: ["Flash", "GreenLantern", "Ant-Man", "Thor"], Answer: 0),
            Question(Question: "WonderWoman", Answers: ["Daredevil", "Wolverine", "Black Widow", "WonderWoman"], Answer: 3),
            Question(Question: "Superman", Answers: ["Silver Surfer", "Superman", "Plasticman", "Beastboy"], Answer: 1),]

        
        
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
        lightUpButtons()
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
        lightUpButtons()
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
        lightUpButtons()
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
        lightUpButtons()
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
        if QLabel == "Spiderman"{
            logoImageView.image = UIImage(named:"spiderman.png")
        }
        if QLabel == "Batman"{
            logoImageView.image = UIImage(named:"batman.png")
        }
        if QLabel == "Flash"{
            logoImageView.image = UIImage(named:"flash.png")
        }
        if QLabel == "WonderWoman"{
            logoImageView.image = UIImage(named:"wonderwoman.png")
        }
        if QLabel == "Superman"{
            logoImageView.image = UIImage(named:"superman.png")
        }
    }
    
    func lightUpButtons() {
        let delayInSeconds = 0.2
        bar1.image = UIImage(named:"greenBar")
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delayInSeconds) {
            self.bar1.image = UIImage(named:"greyBar")
        self.bar2.image = UIImage(named:"greenBar")
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delayInSeconds) {
            self.bar2.image = UIImage(named:"greyBar")
            self.bar3.image = UIImage(named:"greenBar")
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delayInSeconds) {
            self.bar3.image = UIImage(named:"greyBar")
            self.bar4.image = UIImage(named:"greenBar")
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delayInSeconds) {
            self.bar4.image = UIImage(named:"greyBar")
            }}}}}

    }
