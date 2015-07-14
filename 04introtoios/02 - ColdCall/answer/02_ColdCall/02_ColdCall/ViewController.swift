//
//  ViewController.swift
//  02_ColdCall
//
//  Created by Jae Hoon Lee on 7/8/15.
//  Copyright © 2015 Jae Hoon Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var names = ["Kobe", "Charles", "MJ", "Lebron"]
    
    @IBOutlet weak var nameLabel: UILabel!

    @IBAction func coldCallButtonPressed(sender: UIButton) {
        updateUI()
    }
    
    func updateUI() {
        let randomIndex = arc4random_uniform(UInt32(names.count))
        nameLabel.text = names[Int(randomIndex)]
    }
}

