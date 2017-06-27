//
//  ViewController.swift
//  Timers
//
//  Created by 姚宇鴻 on 2017/6/26.
//  Copyright © 2017年 JordanYao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TimerLabel: UILabel!
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        TimerLabel.text = String(counter)
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timerFunction),
                                     userInfo: nil, repeats: true)
        
        
    }

    func timerFunction(){
        
        TimerLabel.text = String(counter)
        counter += 1
        
        if counter == 10 {
            
            timer.invalidate()
            TimerLabel.text = "0"
        }
        
    }

}

