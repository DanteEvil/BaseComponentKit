//
//  UITableViewCell+Additional.swift
//  BaseComponentKit
//
//  Created by Truong Le on 9/20/19.
//  Copyright © 2019 Truong Le. All rights reserved.
//

import Foundation

protocol ReuseAbleCell {}
extension GBaseTableViewCell: ReuseAbleCell {}

extension ReuseAbleCell where Self: GBaseTableViewCell {
    static var reuseId: String {
        return String(describing: self)
    }
}


