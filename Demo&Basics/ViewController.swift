//
//  ViewController.swift
//  Demo&Basics
//
//  Created by Francis Zamora on 1/29/17.
//  Copyright © 2017 Francis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var playerSwitch: UISwitch!
    
    @IBOutlet var playerLabel: UILabel!
    
    @IBOutlet var scoreDisplay: UILabel!
    
    
    @IBOutlet var playerSwitch2: UILabel!
    
    @IBOutlet var scoreDisplay2: UILabel!
    
    @IBOutlet var welcomeGreeting: UILabel!
    
    @IBOutlet var theSwitch: UISwitch!
   
    @IBOutlet var newLabel: UILabel!
     @IBOutlet var changingView: UIView!
    
    
    
    
    var score2 = 0

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
        /*
        if theSwitch.isOn {
            changingView.backgroundColor = UIColor.magenta
        score1 = score1 + 1
        print(score1)
        
        let stringScoring = String(describing: score1)
            scoreDisplay2.text = stringScoring
        }
        else {
            changingView.backgroundColor = UIColor.green
            //newLabel.text = "The view is now red"
            //score1 = score1 + 1
            let stringScoring = String(describing: score1)
            scoreDisplay.text = stringScoring
        }
 */
        
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
    
    
    
        
        
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        changingView.backgroundColor = UIColor.blue
        
        newLabel.text = "Player 2 "
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

