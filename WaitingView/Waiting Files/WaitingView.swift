//
//  WaitingView.swift
//  WaitingView
//
//  Created by David Galán on 01/02/2019.
//  Copyright © 2019 David Galán. All rights reserved.
//

import Foundation
import UIKit

class WaitingView: NSObject {
    
    static var mainViews = Array<UIView>()
    static let rv: UIView = (UIApplication.shared.keyWindow?.subviews.first)!
    
    static func clear() {
        for i in mainViews {
            i.removeFromSuperview()
        }
    }
    
    static func wait() {
        let waitingXibView = WaitingViewVC.instance.loadViewFromNib()
        waitingXibView.frame = CGRect(x: 0, y: 0, width: rv.frame.width, height: rv.frame.height)
        waitingXibView.center = rv.center
        rv.addSubview(waitingXibView)
        rv.bringSubviewToFront(waitingXibView)
        mainViews.append(waitingXibView)
    }
    
    private func setWaitingParameters() {
        
    }
    
}

extension UIViewController {

    func pleaseWait() {
        WaitingView.wait()
    }
    
    func pleaseWaitWithParameters(message: String, cancelButton: Bool) {
        WaitingView.wait()
        WaitingViewVC.instance.setTextWaiting(message: message)
        WaitingViewVC.instance.setStopButton(isHidden: !cancelButton)
    }
    
    func clearAllNotice() {
        self.view.isUserInteractionEnabled = true
        WaitingView.clear()
    }
}

