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
        waitingXibView.frame = CGRect(x: 0, y: 400, width: rv.frame.width, height: rv.frame.height-200)
        waitingXibView.center = rv.center
        rv.addSubview(waitingXibView)
        rv.bringSubviewToFront(waitingXibView)
        mainViews.append(waitingXibView)
    }
    
}

extension UIViewController {

    func pleaseWait() {
//        self.view.isUserInteractionEnabled = false
        WaitingView.wait()
    }
    
    func clearAllNotice() {
        self.view.isUserInteractionEnabled = true
        WaitingView.clear()
    }
}
