//
//  ViewController.swift
//  iProfileApp
//
//  Created by William Chung on 2016-11-15.
//  Copyright © 2016 William Chung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var qButton: UIButton!
    @IBOutlet weak var wButton: UIButton!
    @IBOutlet weak var eButton: UIButton!
    @IBOutlet weak var rButton: UIButton!
    @IBOutlet weak var tButton: UIButton!
    @IBOutlet weak var yButton: UIButton!
    @IBOutlet weak var uButton: UIButton!
    @IBOutlet weak var iButton: UIButton!
    @IBOutlet weak var oButton: UIButton!
    @IBOutlet weak var pButton: UIButton!
    
    @IBOutlet weak var aButton: UIButton!
    @IBOutlet weak var sButton: UIButton!
    @IBOutlet weak var dButton: UIButton!
    @IBOutlet weak var fButton: UIButton!
    @IBOutlet weak var gButton: UIButton!
    @IBOutlet weak var hButton: UIButton!
    @IBOutlet weak var jButton: UIButton!
    @IBOutlet weak var kButton: UIButton!
    @IBOutlet weak var lButton: UIButton!
    
    @IBOutlet weak var shiftButton: UIButton!
    
    @IBOutlet weak var zButton: UIButton!
    @IBOutlet weak var xButton: UIButton!
    @IBOutlet weak var cButton: UIButton!
    @IBOutlet weak var vButton: UIButton!
    @IBOutlet weak var bButton: UIButton!
    @IBOutlet weak var nButton: UIButton!
    @IBOutlet weak var mButton: UIButton!
    
    @IBOutlet weak var deleteButton: UIButton!
    
    @IBOutlet weak var numbersButton: UIButton!
    
    @IBOutlet weak var spaceButton: UIButton!
    
    @IBOutlet weak var returnButton: UIButton!
    
 
    var tStamp: String {
        return "\(NSDate().timeIntervalSince1970 * 1000)"
    }
    
    var oldDownTime: Double = 0
    var currentDownTime: Double = 0
    var upTime: Double = 0
    var downTimeDifference: Double = 0
    var upTimeDifference: Double = 0
    var shiftClicked: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        qButton.layer.cornerRadius = 5
        wButton.layer.cornerRadius = 5
        eButton.layer.cornerRadius = 5
        rButton.layer.cornerRadius = 5
        tButton.layer.cornerRadius = 5
        yButton.layer.cornerRadius = 5
        uButton.layer.cornerRadius = 5
        iButton.layer.cornerRadius = 5
        oButton.layer.cornerRadius = 5
        pButton.layer.cornerRadius = 5
        
    
    }
    
    @IBAction func push(_ sender: UIButton) {
        
        oldDownTime = currentDownTime
        currentDownTime = Double (tStamp)!
        
        downTimeDifference = currentDownTime - oldDownTime
        
        print(oldDownTime)
        print(currentDownTime)
        print(downTimeDifference)
        
        //downDownTime.text = String (downTimeDifference)
        //timeStamp.text = String (tStamp)
        
    }
    
    
    @IBAction func release(_ sender: UIButton) {
        
        upTime = Double (tStamp)!
        upTimeDifference = upTime - currentDownTime
        
        print(upTime)
        print(upTimeDifference)
        
        
        //downUpTime.text = String (upTimeDifference)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

