//
//  ViewController.swift
//  iProfileApp
//
//  Created by William Chung on 2016-11-15.
//  Copyright © 2016 William Chung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var toPass: String!
    
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
    
    @IBOutlet weak var labelPassedData: UILabel!
    
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
    var upDownTime: Double = 0
    var meanHoldTime: Double = 0
    
    var shiftVisible: Bool = true
    var shiftClicked: Bool = false
    var specialNumVisible: Bool = true
    var specialTwoVisible: Bool = false
    var specialNumClicked: Bool = false
    
    var keyString: String = ""
    
    var location: CGPoint?
    
    var holdtime1   = 0
    var holdtime2   = 0
    var holdtime3   = 0
    var holdtime4   = 0
    var holdtime5   = 0
    var holdtime6   = 0
    var holdtime7   = 0
    var holdtime8   = 0
    var holdtime9   = 0
    var holdtime10  = 0
    var holdtime11  = 0
    var holdtime12  = 0
    var holdtime13  = 0
    var holdtime14  = 0
    
    var downdown1   = 0
    var downdown2   = 0
    var downdown3   = 0
    var downdown4   = 0
    var downdown5   = 0
    var downdown6   = 0
    var downdown7   = 0
    var downdown8   = 0
    var downdown9   = 0
    var downdown10   = 0
    var downdown11   = 0
    var downdown12   = 0
    var downdown13   = 0
    
    var updown1   = 0
    var updown2   = 0
    var updown3   = 0
    var updown4   = 0
    var updown5   = 0
    var updown6   = 0
    var updown7   = 0
    var updown8   = 0
    var updown9   = 0
    var updown10   = 0
    var updown11   = 0
    var updown12   = 0
    var updown13   = 0
    
    var pressure1   = 0
    var pressure2   = 0
    var pressure3   = 0
    var pressure4   = 0
    var pressure5   = 0
    var pressure6   = 0
    var pressure7   = 0
    var pressure8   = 0
    var pressure9   = 0
    var pressure10   = 0
    var pressure11   = 0
    var pressure12   = 0
    var pressure13   = 0
    var pressure14   = 0
    
    var fingerarea1   = 0
    var fingerarea2   = 0
    var fingerarea3   = 0
    var fingerarea4   = 0
    var fingerarea5   = 0
    var fingerarea6   = 0
    var fingerarea7   = 0
    var fingerarea8   = 0
    var fingerarea9   = 0
    var fingerarea10   = 0
    var fingerarea11   = 0
    var fingerarea12   = 0
    var fingerarea13   = 0
    var fingerarea14   = 0
    
    var meanholdtime  = 0
    var meanpressure  = 0
    var meanfingerarea  = 0
    var user_id = ""
    
    var dataArray: [Int] = []
    
    enum UIAlertControllerStyle : Int {
        case ActionSheet
        case Alert
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        labelPassedData.text = toPass
        
    }
    
    
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

        else if(specialTwoVisible == true && specialNumClicked == true) {
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
            dButton.setTitle("\u{007C}", for: .normal)
            fButton.setTitle("~", for: .normal)
            gButton.setTitle("<", for: .normal)
            hButton.setTitle(">", for: .normal)
            jButton.setTitle("\u{20AC}", for: .normal)
            kButton.setTitle("\u{00A3}", for: .normal)
            lButton.setTitle("\u{00A5}", for: .normal)
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
            shiftButton.setTitle("\u{21e7}", for: .normal)
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
        
        print("OldDown: \(oldDownTime)")
        print("CurrentDown: \(currentDownTime)")
        print("DownDifference: \(downTimeDifference)")
        
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
        
        print("UpTime: \(upTime)")
        print("UpTimeDiff: \(upTimeDifference)")
        
        
        //downUpTime.text = String (upTimeDifference)
    }
    
    
    @IBAction func submitToForm(_ sender: UIButton) {
        
        if(keyTextField.text == ".tie5Roanl") {
            let fileURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
                .appendingPathComponent("data.txt")
            
            if let outputStream = OutputStream(url: fileURL, append: true) {
                outputStream.open()
                let text = "write this\n"
                print("Saved to: \(fileURL)")
                let bytesWritten = outputStream.write(text)
                
                if bytesWritten < 0 {
                    print("write failure")
                }
                outputStream.close()
                showAlert(correct: true)
                keyTextField.text = ""
            }
                
            else {
                print("Unable to open file")
            }
        }
        
        else {
            showAlert(correct: false);
            keyTextField.text = ""
            
            //reset all values
            holdtime1   = 0
            holdtime2   = 0
            holdtime3   = 0
            holdtime4   = 0
            holdtime5   = 0
            holdtime6   = 0
            holdtime7   = 0
            holdtime8   = 0
            holdtime9   = 0
            holdtime10  = 0
            holdtime11  = 0
            holdtime12  = 0
            holdtime13  = 0
            holdtime14  = 0
            
            downdown1   = 0
            downdown2   = 0
            downdown3   = 0
            downdown4   = 0
            downdown5   = 0
            downdown6   = 0
            downdown7   = 0
            downdown8   = 0
            downdown9   = 0
            downdown10   = 0
            downdown11   = 0
            downdown12   = 0
            downdown13   = 0
            
            updown1   = 0
            updown2   = 0
            updown3   = 0
            updown4   = 0
            updown5   = 0
            updown6   = 0
            updown7   = 0
            updown8   = 0
            updown9   = 0
            updown10   = 0
            updown11   = 0
            updown12   = 0
            updown13   = 0
            
            pressure1   = 0
            pressure2   = 0
            pressure3   = 0
            pressure4   = 0
            pressure5   = 0
            pressure6   = 0
            pressure7   = 0
            pressure8   = 0
            pressure9   = 0
            pressure10   = 0
            pressure11   = 0
            pressure12   = 0
            pressure13   = 0
            pressure14   = 0
            
            fingerarea1   = 0
            fingerarea2   = 0
            fingerarea3   = 0
            fingerarea4   = 0
            fingerarea5   = 0
            fingerarea6   = 0
            fingerarea7   = 0
            fingerarea8   = 0
            fingerarea9   = 0
            fingerarea10   = 0
            fingerarea11   = 0
            fingerarea12   = 0
            fingerarea13   = 0
            fingerarea14   = 0
            
            meanholdtime  = 0
            meanpressure  = 0
            meanfingerarea  = 0
            
            dataArray = []
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    @IBAction func showAlert(correct: Bool) {
        if(correct == false) {
            let alertController = UIAlertController(title: "Password Incorrect!", message: "Try again.", preferredStyle: .alert)
        
            let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(defaultAction)
        
            present(alertController, animated: true, completion: nil)
        
            _ = { (action:UIAlertAction!) -> Void in
                let alertMessage = UIAlertController(title: "Service Unavailable", message: "Sorry, the call feature is not available yet. Please retry later.", preferredStyle: .alert)
                alertMessage.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alertMessage, animated: true, completion: nil)
            }
        }
        else {
            let alertController = UIAlertController(title: "Correct!", message: "Submittted.", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(defaultAction)
            
            present(alertController, animated: true, completion: nil)
            
            _ = { (action:UIAlertAction!) -> Void in
                let alertMessage = UIAlertController(title: "Service Unavailable", message: "Sorry, the call feature is not available yet. Please retry later.", preferredStyle: .alert)
                alertMessage.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alertMessage, animated: true, completion: nil)
            }
        }
    }
}

    extension OutputStream {
        
        /// Write `String` to `OutputStream`
        ///
        /// - parameter string:                The `String` to write.
        /// - parameter encoding:              The `String.Encoding` to use when writing the string. This will default to `.utf8`.
        /// - parameter allowLossyConversion:  Whether to permit lossy conversion when writing the string. Defaults to `false`.
        ///
        /// - returns:                         Return total number of bytes written upon success. Return `-1` upon failure.
        
        func write(_ string: String, encoding: String.Encoding = .utf8, allowLossyConversion: Bool = false) -> Int {
            
            if let data = string.data(using: encoding, allowLossyConversion: allowLossyConversion) {
                return data.withUnsafeBytes { (bytes: UnsafePointer<UInt8>) -> Int in
                    var pointer = bytes
                    var bytesRemaining = data.count
                    var totalBytesWritten = 0
                    
                    while bytesRemaining > 0 {
                        let bytesWritten = self.write(pointer, maxLength: bytesRemaining)
                        if bytesWritten < 0 {
                            return -1
                        }
                        
                        bytesRemaining -= bytesWritten
                        pointer += bytesWritten
                        totalBytesWritten += bytesWritten
                    }
                    
                    return totalBytesWritten
                }
            }
            
            return -1
        }
        
    }



