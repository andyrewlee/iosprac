//
//  ViewController.swift
//  03_ColdCallv2
//
//  Created by Jae Hoon Lee on 7/8/15.
//  Copyright © 2015 Jae Hoon Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var names = ["Kobe", "Charles", "MJ", "Lebron"]
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBAction func coldCallButtonPressed(sender: UIButton) {
        updateUI()
    }
    
    override func viewDidLoad() {
        numberLabel.hidden = true
    }
    
    func updateUI() {
        let randomIndex = arc4random_uniform(UInt32(names.count))
        nameLabel.text = names[Int(randomIndex)]
        
        let randomNumber = arc4random_uniform(5) + 1
        numberLabel.text = String(randomNumber)
        
        numberLabel.hidden = false
        
        if randomNumber == 1 || randomNumber == 2 {
            numberLabel.textColor = UIColor.redColor()
        } else if randomNumber == 3 || randomNumber == 4 {
            numberLabel.textColor = UIColor.orangeColor()
        } else if randomNumber == 5 {
            numberLabel.textColor = UIColor.greenColor()
        }
    }


}

