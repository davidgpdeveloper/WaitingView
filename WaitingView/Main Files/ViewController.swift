//
//  ViewController.swift
//  WaitingView
//
//  Created by David Galán on 01/02/2019.
//  Copyright © 2019 David Galán. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: OBJECTS
    @IBAction func buttonWaitingAction(_ sender: UIButton) {self.actionWaiting()}
    @IBAction func buttonAlertTextAction(_ sender: UIButton) {actionAlertText()}
    
    // MARK: VARIABLES && CONSTANTS

    
    // MARK: VIEW METHODS
    override func viewDidLoad() {
        super.viewDidLoad()

        WaitingViewVC.delegateWaitingView = self
    }
    
    // MARK: OTHER METHODS
    private func actionWaiting() {
        print("action waiting")
        
        self.pleaseWait()
        
        
        
    }
    
    private func actionAlertText() {
        print("action alert text")
        
    }
}

extension ViewController: WaitingViewVCProtocol {
    
    func stopWaintigView() {
        self.clearAllNotice()
    }
    
}
