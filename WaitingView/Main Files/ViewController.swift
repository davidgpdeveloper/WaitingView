//
//  ViewController.swift
//  WaitingView
//
//  Created by David Galán on 01/02/2019.
//  Copyright © 2019 David Galán. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func buttonWaitingAction(_ sender: UIButton) {self.actionWaiting()}
    
    @IBAction func buttonAlertTextAction(_ sender: UIButton) {actionAlertText()}
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    private func actionWaiting() {
        print("action waiting")
        
        self.pleaseWait()
    
        
    }
    
    private func actionAlertText() {
        print("action alert text")
        
    }
}

