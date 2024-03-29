//
//  UITableViewExtension.swift
//
//
//  Created by David Rodrigues on 23/02/2024.
//

import UIKit

public extension UITableView {
    /// Register a ``UIKit/UITableViewCell`` using the `reuseIdentifier` automatically generated by ``UIKit/UITableViewCell/reuseIdentifier``
    func register(_ type: UITableViewCell.Type) {
        register(type, forCellReuseIdentifier: type.reuseIdentifier)
    }
    
    /// Returns a reusable table-view cell object for the specified cell and adds it to the table.
    func dequeueReusableCell<T: UITableViewCell>(_ type: T.Type, for indexPath: IndexPath) -> T {
        return dequeueReusableCell(withIdentifier: type.reuseIdentifier, for: indexPath) as! T
    }
}
