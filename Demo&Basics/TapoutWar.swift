//
//  TapoutWar.swift
//  Demo&Basics
//
//  Created by Francis Zamora on 3/26/17.
//  Copyright © 2017 Francis. All rights reserved.
//

import Foundation
import UIKit
import QuartzCore

class TapoutWar: UIViewController {
    @IBOutlet var backgroundView2: UIView!
    
    @IBOutlet var germanyView: UIImageView!
    @IBOutlet var backgroundView: UIView!
    @IBOutlet var usaView: UIImageView!
   
    @IBOutlet var usaLabel: UILabel!
    
    @IBOutlet var germanyLabel: UILabel!
    @IBOutlet var usaScore: UILabel!
    
    @IBOutlet var backgroundTitle: UIView!
    
    @IBOutlet var titleImage: UIImageView!
    
    @IBOutlet var titleLabel: UILabel!
    func configureView() {
        self.germanyView.layer.cornerRadius = self.germanyView.layer.frame.height / 2
        self.germanyView.clipsToBounds = true
        self.germanyView.layer.borderWidth = 1.5
        self.germanyView.layer.borderColor = UIColor(red:0.18, green:0.26, blue:0.35, alpha:1.0).cgColor
        self.backgroundView2.layer.cornerRadius = self.germanyView.layer.frame.height / 2
        self.backgroundView2.clipsToBounds = true
        self.backgroundView2.layer.borderWidth = 1.5
        self.backgroundView2.layer.borderColor = UIColor(red:0.18, green:0.26, blue:0.35, alpha:1.0).cgColor
        self.usaView.layer.cornerRadius = self.germanyView.layer.frame.height / 2
        self.usaView.clipsToBounds = true
        self.usaView.layer.borderWidth = 1.5
        self.usaView.layer.borderColor = UIColor(red:0.18, green:0.26, blue:0.35, alpha:1.0).cgColor
        self.backgroundView.layer.cornerRadius = self.germanyView.layer.frame.height / 2
        self.backgroundView.clipsToBounds = true
        self.backgroundView.layer.borderWidth = 1.5
        self.backgroundView.layer.borderColor = UIColor(red:0.18, green:0.26, blue:0.35, alpha:1.0).cgColor
       

        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

} 
