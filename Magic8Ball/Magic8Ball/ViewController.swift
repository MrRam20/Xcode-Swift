//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Chris Ramstetter on 6/13/19.
//  Copyright © 2019 Chris Ramstetter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let imageArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    @IBOutlet weak var magic8Ball: UIImageView!
    var randomImageNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        random8BallImage();
    }


    @IBAction func askButton(_ sender: Any) {
        random8BallImage();
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        random8BallImage()
    
    }
    
    func random8BallImage(){
        
        randomImageNumber = Int.random(in: 0 ... 4)
        
        magic8Ball.image = UIImage(named: imageArray[randomImageNumber])
        
    }
}

