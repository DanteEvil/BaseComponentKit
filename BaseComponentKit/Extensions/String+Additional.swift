//
//  String+Additional.swift
//  BaseComponentKit
//
//  Created by Truong Le on 9/23/19.
//

import Foundation

public extension String {
    static func stringFromInt(num: Int) -> String {
        return String(format: "%d", num)
    }
    
    static func stringFromBool(flag: Bool) -> String {
        return flag ? "true" : "false"
    }
    
    func boolValue() -> Bool {
        return self == "true"
    }
}
