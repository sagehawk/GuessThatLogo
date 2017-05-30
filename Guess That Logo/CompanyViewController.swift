//
//  CompanyViewController.swift
//  Guess That Logo
//
//  Created by Sage Hawk on 5/21/17.
//  Copyright © 2017 Sage Hawk. All rights reserved.
//

import UIKit

class CompanyViewController: UIViewController {
    
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
    var lives:Int = 3
    struct game {
        static var IsOver : Bool = false
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Questions = [
            Question(Question: "NASA", Answers: ["BlackBerry", "NASA", "Nokia", "Microsoft"], Answer: 1),
            Question(Question: "Coca-Cola", Answers: ["Canon", "PepsiCo", "Aquafina", "Coca-Cola"], Answer: 3),
            Question(Question: "Dreamworks", Answers: ["Starbucks", "Nike", "Dreamworks", "Pampers"], Answer: 2),
            Question(Question: "Gatorade", Answers: ["Google", "Sprite", "Gatorade", "Chase"], Answer: 2),
            Question(Question: "Lego", Answers: ["Lego", "IKEA", "Sony", "Adidas"], Answer: 0),]
        
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
        gameWon()
    }
    
    @IBAction func btn1(_ sender: Any) {
        if answerNumber == 0{
            questionNumber += 1
            bar1.image = UIImage(named:"greenBar")
            let delayInSeconds = 0.5
            checkGameState()
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delayInSeconds) {
                if game.IsOver == false {
                    
                    self.PickQuestion()
                }
            }
        }
        else {
            lives -= 1
            print("\(lives)")
            NSLog("Wrong!")
            bar1.image = UIImage(named:"redBar")
            checkGameState()
        }
    }
    @IBAction func btn2(_ sender: Any) {
        if answerNumber == 1{
            questionNumber += 1
            bar2.image = UIImage(named:"greenBar")
            let delayInSeconds = 0.5
            checkGameState()
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delayInSeconds) {
                if game.IsOver == false {
                    
                    self.PickQuestion()
                }
            }
        }
            
        else {
            lives -= 1
            print("\(lives)")
            NSLog("Wrong!")
            bar2.image = UIImage(named:"redBar")
            checkGameState()
        }
    }
    @IBAction func btn3(_ sender: Any) {
        if answerNumber == 2{
            questionNumber += 1
            bar3.image = UIImage(named:"greenBar")
            let delayInSeconds = 0.5
            checkGameState()
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delayInSeconds) {
                if game.IsOver == false {
                    
                    self.PickQuestion()
                }
            }
        }
        else {
            lives -= 1
            print("\(lives)")
            NSLog("Wrong!")
            bar3.image = UIImage(named:"redBar")
            checkGameState()
        }
    }
    @IBAction func btn4(_ sender: Any) {
        if answerNumber == 3{
            questionNumber += 1
            bar4.image = UIImage(named:"greenBar")
            let delayInSeconds = 0.5
            checkGameState()
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delayInSeconds) {
                if game.IsOver == false {
                    
                    self.PickQuestion()
                }
            }
        }
        else {
            lives -= 1
            print("\(lives)")
            NSLog("Wrong!")
            bar4.image = UIImage(named:"redBar")
            checkGameState()
        }
    }
    
    func setLogo() {
        if game.IsOver == false {
            if QLabel == "NASA"{
                logoImageView.image = UIImage(named:"nasa.png")
            }
            if QLabel == "Coca-Cola"{
                logoImageView.image = UIImage(named:"coke.png")
            }
            if QLabel == "Dreamworks"{
                logoImageView.image = UIImage(named:"dreamworks.png")
            }
            if QLabel == "Gatorade"{
                logoImageView.image = UIImage(named:"gatorade.png")
            }
            if QLabel == "Lego"{
                logoImageView.image = UIImage(named:"lego.png")
            }
        }
    }
    func gameOver() {
        if lives == 0 {
            game.IsOver = true
            logoImageView.image = UIImage(named: "gameover")
            print("You lose!")
        }
        
    }
    func gameWon(){
        if questionNumber >= 5 {
            logoImageView.image = UIImage(named: "gamewon")
            print("Game Won")
        }
    }
    
    func checkGameState(){
        gameWon()
        gameOver()
    }
}
