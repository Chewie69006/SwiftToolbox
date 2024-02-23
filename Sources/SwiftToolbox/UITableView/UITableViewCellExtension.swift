//
//  UITableViewCellExtension.swift
//
//
//  Created by David Rodrigues on 23/02/2024.
//

import UIKit

public extension UITableViewCell {
    /// Generate an automatic `reuseIdentifier` based on the class name of the cell
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
