//
//  UITableViewExtension.swift
//
//
//  Created by David Rodrigues on 23/02/2024.
//

import UIKit

public extension UITableView {
    func register(_ type: UITableViewCell.Type) {
        register(type, forCellReuseIdentifier: type.reuseIdentifier)
    }
}
