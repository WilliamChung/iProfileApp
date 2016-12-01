//
//  secondViewController.swift
//  iProfileApp
//
//  Created by T00037035 on 2016-12-01.
//  Copyright © 2016 William Chung. All rights reserved.
//

import UIKit

//log in screen
class secondViewController: UIViewController {

    
    @IBOutlet weak var usernameTextBox: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "segueOne") {
            let svc = segue.destination as! ViewController
            
            svc.toPass = usernameTextBox.text
            
        }
    }
    
    @IBAction func loginClick(_ sender: UIButton) {
        if(usernameTextBox.text == "") {
            showAlert()
        }
    }
    //check if there is a username
    //print error if none
    //proceed to password screen if text provided
    @IBAction func showAlert() {
        let alertController = UIAlertController(title: "Error!", message: "Please enter a username.", preferredStyle: .alert)
        
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
