//
//  Sequence.swift
//
//
//  Created by David Rodrigues on 23/02/2024.
//

import Foundation

public extension Sequence where Iterator.Element: Hashable {
    /// Returns another `Sequence` with each element only present once
    var uniques: [Iterator.Element] {
        var seen: Set<Iterator.Element> = []
        return filter { seen.insert($0).inserted }
    }
}
