//
//  UIView+Additional.swift
//  BaseComponentKit
//
//  Created by Truong Le on 9/20/19.
//  Copyright © 2019 Truong Le. All rights reserved.
//

import UIKit

extension UIView {
    public func drawShadow() {
        clipsToBounds = false
        layer.shadowColor   = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2).cgColor
        layer.shadowOffset  = CGSize(width:3,height:3)
        layer.shadowOpacity = 0.7
        layer.shadowRadius  = 3.0
    }
    
    public func clearShadow() {
        layer.shadowColor   = UIColor.clear.cgColor
        layer.shadowOffset  = CGSize.zero
        layer.shadowOpacity = 0.0
        layer.shadowRadius  = 0.0
    }
}
