//
//  GBaseTextView.swift
//  BaseComponentKit
//
//  Created by Truong Le on 9/20/19.
//  Copyright © 2019 Truong Le. All rights reserved.
//

import UIKit

@IBDesignable open class GBaseTextView: UITextView {
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
    
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        layout()
    }
    
    required public init?(coder aDecoder:NSCoder) { super.init(coder:aDecoder)
        layout()
    }
    
    open func layout() {
        textContainerInset = UIEdgeInsets(top: 0, left: -5, bottom: 0, right: 0)
    }
}
