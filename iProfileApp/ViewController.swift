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
    
    @IBAction func lButton(_ sender: UIButton) {
        
        
        
        
    }
    
    
    @IBOutlet weak var deleteButton: UIButton!
    
    @IBOutlet weak var numbersButton: UIButton!
    
    @IBOutlet weak var spaceButton: UIButton!
    
    @IBOutlet weak var returnButton: UIButton!
    
    @IBOutlet weak var keyTextField: UITextField!
 
    @IBOutlet weak var timeStampField: UITextField!
    
    @IBOutlet weak var locationTextField: UITextField!
    
    var tStamp: String {
        return "\(NSDate().timeIntervalSince1970 * 1000)"
    }
    
    var oldDownTime: Double = 0
    var currentDownTime: Double = 0
    var upTime: Double = 0
    var downTimeDifference: Double = 0
    var upTimeDifference: Double = 0
    var shiftVisible: Bool = true
    var shiftClicked: Bool = false
    var specialNumVisible: Bool = true
    var specialTwoVisible: Bool = false
    var specialNumClicked: Bool = false
    
    var keyString: String = ""
    
    var location: CGPoint?
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
        print("Touches began")
        if let touch = touches.first {
            let position: CGPoint = touch.location(in: view)
            print(position.x)
            print(position.y)
            
            let locX: CGFloat = position.x
            let locY: CGFloat = position.y
            
            let x = String (stringInterpolationSegment:locX)
            let y = String (stringInterpolationSegment:locY)
            
            locationTextField.text = "X: " + x + ", Y: " + y
            
            
            
        }
        
        
        
        
        
        
        super.touchesBegan(touches , with: event)
    }

    
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
        
        aButton.layer.cornerRadius = 5
        sButton.layer.cornerRadius = 5
        dButton.layer.cornerRadius = 5
        fButton.layer.cornerRadius = 5
        gButton.layer.cornerRadius = 5
        hButton.layer.cornerRadius = 5
        jButton.layer.cornerRadius = 5
        kButton.layer.cornerRadius = 5
        lButton.layer.cornerRadius = 5
        
        shiftButton.layer.cornerRadius = 5
        
        zButton.layer.cornerRadius = 5
        xButton.layer.cornerRadius = 5
        cButton.layer.cornerRadius = 5
        vButton.layer.cornerRadius = 5
        bButton.layer.cornerRadius = 5
        nButton.layer.cornerRadius = 5
        mButton.layer.cornerRadius = 5
        
        deleteButton.layer.cornerRadius = 5
        
        numbersButton.layer.cornerRadius = 5
        
        spaceButton.layer.cornerRadius = 5
    
        returnButton.layer.cornerRadius = 5

    }
    
    
    @IBAction func deletePushed(_ sender: UIButton) {
        if(keyString == "") {} //remove only if there is something there
        else {
            keyString = keyString.substring(to: keyString.index(before: keyString.endIndex))
            keyTextField.text = keyString
        }
    }
    
    @IBAction func spacePushed(_ sender: UIButton) {
        keyString += " "
        keyTextField.text = keyString
    }
    
    
    @IBAction func shiftPushed(_ sender: UIButton) {

        if(shiftVisible == true && shiftClicked == false){
            qButton.setTitle("Q", for: .normal)
            wButton.setTitle("W", for: .normal)
            eButton.setTitle("E", for: .normal)
            rButton.setTitle("R", for: .normal)
            tButton.setTitle("T", for: .normal)
            yButton.setTitle("Y", for: .normal)
            uButton.setTitle("U", for: .normal)
            iButton.setTitle("I", for: .normal)
            oButton.setTitle("O", for: .normal)
            pButton.setTitle("P", for: .normal)
            aButton.setTitle("A", for: .normal)
            sButton.setTitle("S", for: .normal)
            dButton.setTitle("D", for: .normal)
            fButton.setTitle("F", for: .normal)
            gButton.setTitle("G", for: .normal)
            hButton.setTitle("H", for: .normal)
            jButton.setTitle("J", for: .normal)
            kButton.setTitle("K", for: .normal)
            lButton.setTitle("L", for: .normal)
            zButton.setTitle("Z", for: .normal)
            xButton.setTitle("X", for: .normal)
            cButton.setTitle("C", for: .normal)
            vButton.setTitle("V", for: .normal)
            bButton.setTitle("B", for: .normal)
            nButton.setTitle("N", for: .normal)
            mButton.setTitle("M", for: .normal)
            
            shiftClicked = true
        }
        else {
            qButton.setTitle("q", for: .normal)
            wButton.setTitle("w", for: .normal)
            eButton.setTitle("e", for: .normal)
            rButton.setTitle("r", for: .normal)
            tButton.setTitle("t", for: .normal)
            yButton.setTitle("y", for: .normal)
            uButton.setTitle("u", for: .normal)
            iButton.setTitle("i", for: .normal)
            oButton.setTitle("o", for: .normal)
            pButton.setTitle("p", for: .normal)
            aButton.setTitle("a", for: .normal)
            sButton.setTitle("s", for: .normal)
            dButton.setTitle("d", for: .normal)
            fButton.setTitle("f", for: .normal)
            gButton.setTitle("g", for: .normal)
            hButton.setTitle("h", for: .normal)
            jButton.setTitle("j", for: .normal)
            kButton.setTitle("k", for: .normal)
            lButton.setTitle("l", for: .normal)
            zButton.setTitle("z", for: .normal)
            xButton.setTitle("x", for: .normal)
            cButton.setTitle("c", for: .normal)
            vButton.setTitle("v", for: .normal)
            bButton.setTitle("b", for: .normal)
            nButton.setTitle("n", for: .normal)
            mButton.setTitle("m", for: .normal)
            
            shiftClicked = false
        }

        if(specialTwoVisible == true && specialNumClicked == true) {
            qButton.setTitle("[", for: .normal)
            wButton.setTitle("]", for: .normal)
            eButton.setTitle("{", for: .normal)
            rButton.setTitle("}", for: .normal)
            tButton.setTitle("#", for: .normal)
            yButton.setTitle("%", for: .normal)
            uButton.setTitle("^", for: .normal)
            iButton.setTitle("*", for: .normal)
            oButton.setTitle("+", for: .normal)
            pButton.setTitle("=", for: .normal)
            aButton.setTitle("_", for: .normal)
            sButton.setTitle("\\", for: .normal)
            dButton.setTitle("\u{00601C}", for: .normal)
            fButton.setTitle("~", for: .normal)
            gButton.setTitle("<", for: .normal)
            hButton.setTitle(">", for: .normal)
            jButton.setTitle("\u{008000}", for: .normal)
            kButton.setTitle("\u{00A003}", for: .normal)
            lButton.setTitle("\u{00A005}", for: .normal)
            zButton.setTitle("-", for: .normal)
            xButton.setTitle(".", for: .normal)
            cButton.setTitle(",", for: .normal)
            vButton.setTitle("?", for: .normal)
            bButton.setTitle("!", for: .normal)
            nButton.setTitle("'", for: .normal)
            mButton.setTitle("\"", for: .normal)
            shiftButton.setTitle("123", for: .normal)
            
            specialTwoVisible = true
            specialNumClicked = false
            shiftVisible = false
            
        }
        if(specialTwoVisible == true && specialNumClicked == false) {
            qButton.setTitle("1", for: .normal)
            wButton.setTitle("2", for: .normal)
            eButton.setTitle("3", for: .normal)
            rButton.setTitle("4", for: .normal)
            tButton.setTitle("5", for: .normal)
            yButton.setTitle("6", for: .normal)
            uButton.setTitle("7", for: .normal)
            iButton.setTitle("8", for: .normal)
            oButton.setTitle("9", for: .normal)
            pButton.setTitle("0", for: .normal)
            aButton.setTitle("-", for: .normal)
            sButton.setTitle("/", for: .normal)
            dButton.setTitle(":", for: .normal)
            fButton.setTitle(";", for: .normal)
            gButton.setTitle("(", for: .normal)
            hButton.setTitle(")", for: .normal)
            jButton.setTitle("$", for: .normal)
            kButton.setTitle("&", for: .normal)
            lButton.setTitle("@", for: .normal)
            zButton.setTitle(".", for: .normal)
            xButton.setTitle(",", for: .normal)
            cButton.setTitle("?", for: .normal)
            vButton.setTitle("!", for: .normal)
            bButton.setTitle("'", for: .normal)
            nButton.setTitle("\"", for: .normal)
            mButton.setTitle("\\", for: .normal)
            shiftButton.setTitle("#+=", for: .normal)
            numbersButton.setTitle("ABC", for: .normal)
            
            specialNumVisible = true
            specialTwoVisible = true
            specialNumClicked = true
            shiftVisible = false

        }
    }
    
    @IBAction func specialNumPushed(_ sender: UIButton) {
        if(specialNumVisible == true){
            qButton.setTitle("1", for: .normal)
            wButton.setTitle("2", for: .normal)
            eButton.setTitle("3", for: .normal)
            rButton.setTitle("4", for: .normal)
            tButton.setTitle("5", for: .normal)
            yButton.setTitle("6", for: .normal)
            uButton.setTitle("7", for: .normal)
            iButton.setTitle("8", for: .normal)
            oButton.setTitle("9", for: .normal)
            pButton.setTitle("0", for: .normal)
            aButton.setTitle("-", for: .normal)
            sButton.setTitle("/", for: .normal)
            dButton.setTitle(":", for: .normal)
            fButton.setTitle(";", for: .normal)
            gButton.setTitle("(", for: .normal)
            hButton.setTitle(")", for: .normal)
            jButton.setTitle("$", for: .normal)
            kButton.setTitle("&", for: .normal)
            lButton.setTitle("@", for: .normal)
            zButton.setTitle(".", for: .normal)
            xButton.setTitle(",", for: .normal)
            cButton.setTitle("?", for: .normal)
            vButton.setTitle("!", for: .normal)
            bButton.setTitle("'", for: .normal)
            nButton.setTitle("\"", for: .normal)
            mButton.setTitle("\\", for: .normal)
            shiftButton.setTitle("#+=", for: .normal)
            numbersButton.setTitle("ABC", for: .normal)
            
            specialNumVisible = false
            specialNumClicked = true
            specialTwoVisible = true
            shiftVisible = false
        }
        else {
            qButton.setTitle("q", for: .normal)
            wButton.setTitle("w", for: .normal)
            eButton.setTitle("e", for: .normal)
            rButton.setTitle("r", for: .normal)
            tButton.setTitle("t", for: .normal)
            yButton.setTitle("y", for: .normal)
            uButton.setTitle("u", for: .normal)
            iButton.setTitle("i", for: .normal)
            oButton.setTitle("o", for: .normal)
            pButton.setTitle("p", for: .normal)
            aButton.setTitle("a", for: .normal)
            sButton.setTitle("s", for: .normal)
            dButton.setTitle("d", for: .normal)
            fButton.setTitle("f", for: .normal)
            gButton.setTitle("g", for: .normal)
            hButton.setTitle("h", for: .normal)
            jButton.setTitle("j", for: .normal)
            kButton.setTitle("k", for: .normal)
            lButton.setTitle("l", for: .normal)
            zButton.setTitle("z", for: .normal)
            xButton.setTitle("x", for: .normal)
            cButton.setTitle("c", for: .normal)
            vButton.setTitle("v", for: .normal)
            bButton.setTitle("b", for: .normal)
            nButton.setTitle("n", for: .normal)
            mButton.setTitle("m", for: .normal)
            shiftButton.setTitle("^", for: .normal)
            numbersButton.setTitle("123", for: .normal)
            
            specialNumVisible = true
            specialTwoVisible = false
            shiftVisible = true
        }
    }
    
    @IBAction func push(_ sender: UIButton) {
        
        oldDownTime = currentDownTime
        currentDownTime = Double (tStamp)!
        
        downTimeDifference = currentDownTime - oldDownTime
        
        print(oldDownTime)
        print(currentDownTime)
        print(downTimeDifference)
        
        if(shiftClicked == true) {
            keyString += sender.currentTitle!
            keyTextField.text = keyString
            
            qButton.setTitle("q", for: .normal)
            wButton.setTitle("w", for: .normal)
            eButton.setTitle("e", for: .normal)
            rButton.setTitle("r", for: .normal)
            tButton.setTitle("t", for: .normal)
            yButton.setTitle("y", for: .normal)
            uButton.setTitle("u", for: .normal)
            iButton.setTitle("i", for: .normal)
            oButton.setTitle("o", for: .normal)
            pButton.setTitle("p", for: .normal)
            aButton.setTitle("a", for: .normal)
            sButton.setTitle("s", for: .normal)
            dButton.setTitle("d", for: .normal)
            fButton.setTitle("f", for: .normal)
            gButton.setTitle("g", for: .normal)
            hButton.setTitle("h", for: .normal)
            jButton.setTitle("j", for: .normal)
            kButton.setTitle("k", for: .normal)
            lButton.setTitle("l", for: .normal)
            zButton.setTitle("z", for: .normal)
            xButton.setTitle("x", for: .normal)
            cButton.setTitle("c", for: .normal)
            vButton.setTitle("v", for: .normal)
            bButton.setTitle("b", for: .normal)
            nButton.setTitle("n", for: .normal)
            mButton.setTitle("m", for: .normal)
            
            shiftVisible = true
            shiftClicked = false
            
        }
        else {
            keyString += sender.currentTitle!
            keyTextField.text = keyString
        }
    
        
        
        
        //downDownTime.text = String (downTimeDifference)
        timeStampField.text = String (tStamp)
        
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

