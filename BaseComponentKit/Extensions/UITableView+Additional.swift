//
//  UITableView+Additional.swift
//  BaseComponentKit
//
//  Created by Truong Le on 9/20/19.
//  Copyright © 2019 Truong Le. All rights reserved.
//

import Foundation
import UIKit

public extension GBaseTableView {
    func registerCellClass<Cell: GBaseTableViewCell>(type: Cell.Type) {
        self.register(type, forCellReuseIdentifier: type.reuseId)
    }
    
    func registerCellNib<Cell: GBaseTableViewCell>(type: Cell.Type) {
        self.register(UINib(nibName: Cell.reuseId, bundle: nil), forCellReuseIdentifier: Cell.reuseId)
    }
    
    func dequeueReusableCell<Cell: GBaseTableViewCell>(forIndexPath indexPath: IndexPath) -> Cell {
        guard let cell = self.dequeueReusableCell(withIdentifier: Cell.reuseId, for: indexPath) as? Cell else {
            fatalError("Can not dequeue cell \(Cell.reuseId)")
        }
        return cell
    }
}
