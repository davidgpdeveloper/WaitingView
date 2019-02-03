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
        let customView = WaitingViewVC.instance.loadViewFromNib()
        customView.frame = CGRect(x: 0, y: 0, width: rv.frame.width, height: rv.frame.height)
        customView.center = rv.center
        rv.addSubview(customView)
        rv.bringSubviewToFront(customView)
        mainViews.append(customView)
    }
    
}

extension UIViewController {

    func pleaseWait() {
        self.view.isUserInteractionEnabled = false
        WaitingView.wait()
    }
    

    
}
