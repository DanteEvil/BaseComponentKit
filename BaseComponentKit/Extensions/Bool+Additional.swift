//
//  Bool+Additional.swift
//  BaseComponentKit
//
//  Created by Truong Le on 9/23/19.
//

import Foundation

public extension Bool {
    func intValue() -> Int {
        return self ? 1 : 0
    }
    
    func stringValue() -> String {
        return self ? "true" : "false"
    }
}
