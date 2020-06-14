//
//  Array+Only.swift
//  Memorize
//
//  Created by Garrick Henne on 2020-06-02.
//  Copyright © 2020 Garrick Henne. All rights reserved.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
