//
//  ViewController.swift
//  CatchTheRainbow
//
//  Created by Mehmet Bilir on 27.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var score = 0
    var timer = Timer()
    var rainbowArray = [UIImageView]()
    var timer1 = Timer()
    var counter = 10
    
    
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
        rainbowArray = [rainbow1,rainbow2,rainbow3,rainbow4,rainbow5,rainbow6,rainbow7,rainbow8,rainbow9]
        hideRainbow()
        timeLabel.text = "Time: \(counter)"
        
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
        
        
        //Timers
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(hideRainbow), userInfo: nil, repeats: true)
        timer1 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countdown), userInfo: nil, repeats: true)
        

        
        
        
    }
    
    @objc func increaseScore(){
        
        score += 1
        scoreLabel.text = "Score: \(score)"
        
        
        
    }
    
    @objc func hideRainbow (){
        for rainbow in rainbowArray{
            
            rainbow.isHidden = true
            }
        
        let randomInteger = Int.random(in: 0...8)
        rainbowArray[randomInteger].isHidden = false
        
    
    }
    @objc func countdown(){
        
        counter -= 1
        timeLabel.text = "Time: \(counter)"
        
        if counter == 0 {
            
            scoreLabel.text = "Score: \(score)"
            timer1.invalidate()
            timer.invalidate()
            for rainbow in rainbowArray{
                
                rainbow.isHidden = true
                }
            
            let alert = UIAlertController(title: "Time's Over.", message: "Do you want play again?", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
            let againButton = UIAlertAction(title: "Again", style: UIAlertAction.Style.default) { UIAlertAction in
                //
            }
            
            alert.addAction(okButton)
            alert.addAction(againButton)
            self.present(alert, animated: true)
            
        }
        
        
    }
    
    


}

