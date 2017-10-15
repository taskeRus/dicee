//
//  ViewController.swift
//  dicee
//
//  Created by Alex Lolokov on 14.10.2017.
//  Copyright © 2017 Alex Lolokov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var diceRandomIndex1: Int = 0
    var diceRandomIndex2: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages() {
        diceRandomIndex1 = Int(arc4random_uniform(6))
        diceRandomIndex2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: diceArray[diceRandomIndex1])
        diceImageView2.image = UIImage(named: diceArray[diceRandomIndex2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
}

