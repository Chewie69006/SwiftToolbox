//
//  UITableViewCellExtension.swift
//
//
//  Created by David Rodrigues on 23/02/2024.
//

import UIKit

extension UITableViewCell {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
