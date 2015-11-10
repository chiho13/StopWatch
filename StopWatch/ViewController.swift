//
//  ViewController.swift
//  StopWatch
//
//  Created by Anthony Ho on 09/11/2015.
//  Copyright © 2015 Anthony Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

       var timer = NSTimer()
        var time = 0
    
    @IBOutlet var timerLabel: UILabel!
    
    
    func increasedTimer() {
        
        time++
        timerLabel.text = "\(time)"
        
    }
    
    @IBAction func play(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increasedTimer"), userInfo: nil, repeats: true)
        
    }
    @IBAction func pause(sender: AnyObject) {
        
        timer.invalidate()
 
    }
    @IBAction func reset(sender: AnyObject) {
        timer.invalidate()
        time = 0
        timerLabel.text = "0"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

