//
//  WaitingViewVC.swift
//  WaitingView
//
//  Created by David Galán on 01/02/2019.
//  Copyright © 2019 David Galán. All rights reserved.
//

import Foundation
import UIKit


class WaitingViewVC: UIView {

    static let instance = WaitingViewVC()
    
    
    // MARK: INIT CODE
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//
//        let _ = loadViewFromNib()
//
//    }
    
    func loadViewFromNib() -> UIView {
        
        let bundle = Bundle.init(for: type(of: self))
        let nib = UINib(nibName: "WaitingView", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
//        view.frame = bounds
//        view.autoresizingMask = [UIView.AutoresizingMask.flexibleWidth, UIView.AutoresizingMask.flexibleHeight]
//        addSubview(view)
        
        return view
    }
    
}
