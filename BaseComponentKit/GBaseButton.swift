//
//  GBaseButton.swift
//  BaseComponentKit
//
//  Created by Truong Le on 9/20/19.
//  Copyright © 2019 Truong Le. All rights reserved.
//

import UIKit

@IBDesignable open class GBaseButton: UIButton {
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
            setup()
        }
    }
    
    override open var isEnabled: Bool {
        didSet {
            setup()
        }
    }
    
    override open var isHighlighted: Bool {
        didSet {
            setup()
        }
    }
    
    #if !TARGET_INTERFACE_BUILDER
    override init(frame:CGRect) {
        super.init(frame:frame);
        setup()
    }
    required public init?(coder aDecoder:NSCoder) {
        super.init(coder:aDecoder);
        setup()
    }
    #endif
    
    override open func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder();
        setup()
    }
    
    private func setup() {
        if isHighlighted {
            layoutHighlight()
        }
        else {
            if isEnabled {
                if hasShadow {
                    drawShadow()
                }
                else {
                    clearShadow()
                }
                layoutEnable()
            }
            else {
                layoutDisable()
            }
        }
    }
    
    // Different state may have different UIs
    open func layoutHighlight() {
        
    }
    
    open func layoutDisable() {
        
    }
    
    open func layoutEnable() {
        
    }
}
