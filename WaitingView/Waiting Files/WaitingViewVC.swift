//
//  WaitingViewVC.swift
//  WaitingView
//
//  Created by David Galán on 01/02/2019.
//  Copyright © 2019 David Galán. All rights reserved.
//

import Foundation
import UIKit

protocol WaitingViewVCProtocol {
    func stopWaintigView()
}

class WaitingViewVC: UIView {
    
    // MARK: OBJECTS
    @IBOutlet weak var viewBackground: UIView!
    @IBOutlet weak var viewCenterContainer: UIView!
    @IBOutlet weak var stackViewCenterItems: UIStackView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var labelTextWaiting: UILabel!
    @IBOutlet weak var buttonStopView: UIButton!
    @IBAction func buttonStopViewAction(_ sender: UIButton) {self.actionStopView()}
    

    // MARK: CONSTANTS && VARIABLES
    static var delegateWaitingView: WaitingViewVCProtocol?
    static let instance = WaitingViewVC()
    
    // MARK: INITAL METHOD
    func loadViewFromNib() -> UIView {
        
        let bundle = Bundle.init(for: type(of: self))
        let nib = UINib(nibName: "WaitingView", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        
        setParametersItems()
        
        return view
    }
    
    // MAR: OTHER METHODS
    func actionStopView() {
        WaitingViewVC.delegateWaitingView?.stopWaintigView()
    }
    
    func setTextWaiting(message: String) {
        if labelTextWaiting != nil {
            labelTextWaiting.isHidden = false
            labelTextWaiting.text = message
        }
    }
    
    func setStopButton(isHidden: Bool) {
        buttonStopView.isHidden = isHidden
    }
    
    func setParametersItems() {
        labelTextWaiting.isHidden = true
        buttonStopView.isHidden = true
        
        viewCenterContainer.layer.cornerRadius = 6
        buttonStopView.layer.cornerRadius = 6
    }
    
}
