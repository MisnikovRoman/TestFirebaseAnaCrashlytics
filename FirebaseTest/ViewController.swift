//
//  ViewController.swift
//  FirebaseTest
//
//  Created by MisnikovRoman on 28/02/2019.
//  Copyright © 2019 MisnikovRoman. All rights reserved.
//

import UIKit
import Firebase
import Crashlytics

class ViewController: UIViewController {
    
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var stringTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Firebase"
    }

    @IBAction func test(_ sender: Any) {
        print("Firebase test")
        self.sendTestEvent(with: "new-test-app")
    }
    
    @IBAction func crash(_ sender: Any) {
        self.crashApp()
    }
    
    private func sendTestEvent(with title: String) {
        Analytics.setScreenName("main.screen", screenClass: nil)
        Analytics.logEvent(title, parameters: [
            "name": "test_name" as NSObject,
            "full_text": "test_text" as NSObject
            ])
        
        let message = stringTextField.text ?? "NONE"
        let number = Float(numberTextField.text ?? "0.0")!
        
        CLSLogv("%@", getVaList(["\(message)"]))
        Crashlytics.sharedInstance().setFloatValue(number, forKey: "enteredNumber")
    }
    
    private func crashApp() {
        Crashlytics.sharedInstance().crash()
    }
    
}

