//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by Garrick Henne on 2020-06-01.
//  Copyright © 2020 Garrick Henne. All rights reserved.
//

import Foundation


extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int? {
        for index in 0..<self.count {
            if self[index].id == matching.id {
                return index
            }
        }
        return nil
    }
}
