//
//  ViewController.swift
//  FirebaseTest
//
//  Created by MisnikovRoman on 28/02/2019.
//  Copyright © 2019 MisnikovRoman. All rights reserved.
//

import UIKit
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
       
    }
    
    private func crashApp() {
        Crashlytics.sharedInstance().crash()
    }
    
}

