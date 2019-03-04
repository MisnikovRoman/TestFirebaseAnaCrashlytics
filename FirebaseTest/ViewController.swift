//
//  ViewController.swift
//  FirebaseTest
//
//  Created by MisnikovRoman on 28/02/2019.
//  Copyright © 2019 MisnikovRoman. All rights reserved.
//

import UIKit
import Crashlytics
import TestFirebaseFramework

class ViewController: UIViewController {
    
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var stringTextField: UITextField!
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Firebase"
    }

    @IBAction func test(_ sender: Any) {
        counter += 1
        
        let title = (numberTextField.text ?? "") + "\(counter)"
        AnalyticsKit.shared.sendAction(title: title, parameters: ["name":"counter"])
    }
    
    @IBAction func crash(_ sender: Any) {
        // self.crashApp()
        let screenName = stringTextField.text ?? ""
        AnalyticsKit.shared.sendScreen(name: screenName)
    }
}

private extension ViewController {
    func sendTestEvent(with title: String) {
        
    }
    
    func crashApp() {
        Crashlytics.sharedInstance().crash()
    }
}
