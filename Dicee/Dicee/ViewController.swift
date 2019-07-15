//
//  ViewController.swift
//  Dicee
//
//  Created by Chris Ramstetter on 6/13/19.
//  Copyright © 2019 Chris Ramstetter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let diceAry = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
   
    
    @IBOutlet weak var diceimageView1: UIImageView!
    @IBOutlet weak var diceimageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        twoRandomDiceImages()
    
    }


    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        twoRandomDiceImages()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        twoRandomDiceImages()
        
    }
    
    func twoRandomDiceImages(){
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceimageView1.image = UIImage(named: diceAry[randomDiceIndex1])
        diceimageView2.image = UIImage(named: diceAry[randomDiceIndex2])
    }
    
}

