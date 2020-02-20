//
//  GBaseTextField.swift
//  BaseComponentKit
//
//  Created by Truong Le on 9/20/19.
//  Copyright © 2019 Truong Le. All rights reserved.
//

import UIKit

@IBDesignable open class GBaseTextField: UITextField {
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
    
    #if TARGET_INTERFACE_BUILDER
    override open func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        layout()
    }
    #endif
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layout()
    }
    
    required public init?(coder aDecoder:NSCoder) { super.init(coder:aDecoder)
        layout()
    }
    
    open func layout() {
    }
}
