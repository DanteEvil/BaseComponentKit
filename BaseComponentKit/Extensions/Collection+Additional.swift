//
//  Collection+Additional.swift
//  BaseComponentKit
//
//  Created by Truong Le on 2/4/20.
//  Copyright © 2020 Truong Le. All rights reserved.
//

import Foundation

extension Collection {
    /// Returns the element at the specified index if it is within bounds, otherwise nil.
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
