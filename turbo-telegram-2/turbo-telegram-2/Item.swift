//
//  Item.swift
//  turbo-telegram-2
//
//  Created by m1_air on 8/4/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
