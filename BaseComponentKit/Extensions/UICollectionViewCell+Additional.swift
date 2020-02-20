//
//  UICollectionViewCell+Additional.swift
//  BaseComponentKit
//
//  Created by Truong Le on 2/20/20.
//  Copyright © 2020 Truong Le. All rights reserved.
//

import Foundation

extension GBaseCollectionViewCell: ReuseAbleCell {}

public extension ReuseAbleCell where Self: GBaseCollectionViewCell {
    static var reuseId: String {
        return String(describing: self)
    }
}


