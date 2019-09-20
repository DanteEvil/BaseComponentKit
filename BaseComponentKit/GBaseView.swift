//
//  GBaseView.swift
//  BaseComponentKit
//
//  Created by Truong Le on 9/20/19.
//  Copyright © 2019 Truong Le. All rights reserved.
//

import UIKit

@IBDesignable
open class GBaseView: UIView {
    @IBInspectable public var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable public var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable public var borderColor: UIColor = UIColor.black {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable public var hasShadow: Bool = false {
        didSet {
            if hasShadow {
                drawShadow()
            }
            else {
                clearShadow()
            }
        }
    }
    
    #if !TARGET_INTERFACE_BUILDER
    override init(frame:CGRect){super.init(frame:frame);layout()}
    required public init?(coder aDecoder:NSCoder){super.init(coder:aDecoder);layout()}
    #endif
    
    override open func prepareForInterfaceBuilder(){super.prepareForInterfaceBuilder();layout()}
    
    private func layout() {
        if hasShadow {
            drawShadow()
        }
        else {
            clearShadow()
        }
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor.cgColor
        self.layer.cornerRadius = cornerRadius
    }
}
