//
//  ViewController.swift
//  CatchTheRainbow
//
//  Created by Mehmet Bilir on 27.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var score = 0
    
    
    //Define Main.storyboard variables.
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    @IBOutlet weak var rainbow1: UIImageView!
    @IBOutlet weak var rainbow2: UIImageView!
    @IBOutlet weak var rainbow3: UIImageView!
    @IBOutlet weak var rainbow4: UIImageView!
    @IBOutlet weak var rainbow5: UIImageView!
    @IBOutlet weak var rainbow6: UIImageView!
    @IBOutlet weak var rainbow7: UIImageView!
    @IBOutlet weak var rainbow8: UIImageView!
    @IBOutlet weak var rainbow9: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = "Score: \(score)"
        
        //Gesture recognizer.
        rainbow1.isUserInteractionEnabled = true
        rainbow2.isUserInteractionEnabled = true
        rainbow3.isUserInteractionEnabled = true
        rainbow4.isUserInteractionEnabled = true
        rainbow5.isUserInteractionEnabled = true
        rainbow6.isUserInteractionEnabled = true
        rainbow7.isUserInteractionEnabled = true
        rainbow8.isUserInteractionEnabled = true
        rainbow9.isUserInteractionEnabled = true
        
        let recognizer1 = UITapGestureRecognizer(target: self,action: #selector(increaseScore))
        let recognizer2 = UITapGestureRecognizer(target: self,action: #selector(increaseScore))
        let recognizer3 = UITapGestureRecognizer(target: self,action: #selector(increaseScore))
        let recognizer4 = UITapGestureRecognizer(target: self,action: #selector(increaseScore))
        let recognizer5 = UITapGestureRecognizer(target: self,action: #selector(increaseScore))
        let recognizer6 = UITapGestureRecognizer(target: self,action: #selector(increaseScore))
        let recognizer7 = UITapGestureRecognizer(target: self,action: #selector(increaseScore))
        let recognizer8 = UITapGestureRecognizer(target: self,action: #selector(increaseScore))
        let recognizer9 = UITapGestureRecognizer(target: self,action: #selector(increaseScore))
        
        rainbow1.addGestureRecognizer(recognizer1)
        rainbow2.addGestureRecognizer(recognizer2)
        rainbow3.addGestureRecognizer(recognizer3)
        rainbow4.addGestureRecognizer(recognizer4)
        rainbow5.addGestureRecognizer(recognizer5)
        rainbow6.addGestureRecognizer(recognizer6)
        rainbow7.addGestureRecognizer(recognizer7)
        rainbow8.addGestureRecognizer(recognizer8)
        rainbow9.addGestureRecognizer(recognizer9)
        
        
        
        
        
        
    }
    
    @objc func increaseScore(){
        
        score += 1
        scoreLabel.text = "Score: \(score)"
        
        
        
    }
    
    
    


}

