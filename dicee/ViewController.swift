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
    
    var diceRandomIndex1: Int = 0
    var diceRandomIndex2: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceRandomIndex1 = Int(arc4random_uniform(6))
        diceRandomIndex2 = Int(arc4random_uniform(6))
        
    }
    
}

