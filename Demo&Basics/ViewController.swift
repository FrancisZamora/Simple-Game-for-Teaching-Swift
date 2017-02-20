//
//  ViewController.swift
//  Demo&Basics
//
//  Created by Francis Zamora on 1/29/17.
//  Copyright © 2017 Francis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var initalTitle: UILabel!
    @IBOutlet var winnerPlayer: UILabel!
    @IBOutlet var winnerL: UILabel!
    @IBOutlet var playerSwitch: UISwitch!
    
    @IBOutlet var playerLabel: UILabel!
    
    @IBOutlet var scoreDisplay: UILabel!
    
    
    @IBOutlet var playerSwitch2: UILabel!
    
    @IBOutlet var scoreDisplay2: UILabel!
    
    @IBOutlet var welcomeGreeting: UILabel!
    
    @IBOutlet var theSwitch: UISwitch!
   
    @IBOutlet var newLabel: UILabel!
     @IBOutlet var changingView: UIView!
    
    @IBOutlet var initTime: UILabel!
    @IBOutlet var timerDis: UILabel!
    
    var score2 = 0
    var count = 60

    func update() {
        if(count > 0 ){
            let minutes = String(count / 60)
            let seconds = String(count % 60)
            timerDis.text = minutes + ":" + seconds
            count = count - 1
            print(count)
            initTime.isHidden = true
            initalTitle.isHidden = true
            
        }
        if count > 0 && count > 50 {
            initTime.isHidden = false
            initalTitle.isHidden = false
            winnerL.isHidden = true
            winnerPlayer.isHidden = true
            
        }
        if (count == 60) {
            let minutes = String(count / 60)
            let seconds = String(count % 60)
            timerDis.text = minutes + ":" + seconds
            print(count)
            count -= 1

            initTime.isHidden = false
            initalTitle.isHidden = false
        }
        if (count == 0) {
            timerDis.text = "0:0"
            initTime.isHidden = true
            initalTitle.isHidden = true
            self.resetScore()
            
            
        }
        
        if (count == 30) {
            initalTitle.text = "You have 30 seconds remaining"
            initalTitle.isHidden = false
        }
        
        if (count == 10) {
            initalTitle.text = "You have 10 seconds remaining"
            initalTitle.isHidden = false

        }
        
        if (count == 0) {
            //would you like to play again
            //restartButton.hidden = false
            //
        }
        //constantly display data below
        
    }

    @IBAction func scoreWillChange(_ sender: Any) {
       
        
        
      
            
        
        
                
                
            
        if playerSwitch.isOn{
            changingView.backgroundColor = UIColor.blue
        score2 = score2 + 1
            
            let stringScore = String( describing: score2)
            print(score2)
            scoreDisplay.text = stringScore
            
            
            
        }
        else {
            
                changingView.backgroundColor = UIColor.red
                //score2 = score2 + 1
                
                let stringScoree = String( describing: score2)
                
                scoreDisplay.text = stringScoree
            changingView.backgroundColor = UIColor.red

            
    
            
            
        }
        
    }
    
    
    
    var score1 = 0
    @IBAction func viewWillChange(_ sender: AnyObject) {
        
        if theSwitch.isOn{
            changingView.backgroundColor = UIColor.magenta
            score1 = score1 + 1
            
            let stringScoring = String( describing: score1)
            print(score1)
            scoreDisplay2.text = stringScoring
            
            
            
        }
        else {
            print(score2)
            changingView.backgroundColor = UIColor.green
            
            let stringScoring = String( describing: score1)
            
            scoreDisplay2.text = stringScoring
            changingView.backgroundColor = UIColor.red
            
            
            
            
            
        }

    }
    
    
    
    func resetScore (){
        winnerPlayer.isHidden = false
        winnerL.isHidden = false
        if score1 > score2 {
           winnerPlayer.text = "Player 2"
        }
        
        if score2 > score1 {
            winnerPlayer.text = "Player1 "
            
        }
        
        score2 = 0
        score1 = 0 
    }
    
    
    
        
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        changingView.backgroundColor = UIColor.blue
       
        
    Timer.scheduledTimer(timeInterval: 1,target: self,selector: #selector(self.update),userInfo: nil,repeats: true)

        newLabel.text = "Player 2 "
        self.update()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

