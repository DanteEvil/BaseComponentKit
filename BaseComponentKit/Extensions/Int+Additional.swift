//
//  Int+Additional.swift
//  BaseComponentKit
//
//  Created by Truong Le on 9/23/19.
//

import Foundation

public extension Int {
    func boolValue() -> Bool {
        return self == 1
    }
    
    func stringValue() -> String {
        return String(format: "%d", self)
    }
}
