//
//  Role.swift
//  turbo-telegram
//
//  Created by m1_air on 8/3/24.
//

import Foundation
import SwiftData

enum DayKeys: String, Codable, CaseIterable {
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
    case Sunday
    
    static var allCasesArray: [DayKeys] {
        return Array(Self.allCases)
    }
    
    static var allRawValues: [String] {
            return allCasesArray.map { $0.rawValue }
        }
}

enum RoleKeys: String, Codable, CaseIterable {
    case none
    case any
    case QCandConsolidation
    case MensClothing
    case NDSTS
    case FOP
    case Expedites
    case WebOnly
    case Beauty
    case Jewelry
    case BOPUS
    
    static var allCasesArray: [RoleKeys] {
        return Array(Self.allCases)
    }
    
    static var allRawValues: [String] {
            return allCasesArray.map { $0.rawValue }
        }
}

enum LocationKeys: String, Codable, CaseIterable {
    case none
    case any
    case Level1
    case Level2
    case Level3
    case Shoes
    case Home
    case Kids
    case Active
    case Lingerie
    case KidsShoes
    case POV
    case TBD
    case YA
    case INDI
    case Dresses
    case Collectors
    case Beauty
    case Accessories
    case Jewelry
    case MensSportswear
    case MensClothing
    case MensShoes
    
    static var allCasesArray: [LocationKeys] {
        return Array(Self.allCases)
    }
    
    static var allRawValues: [String] {
            return allCasesArray.map { $0.rawValue }
        }
}

@Model class Role {
    var name: RoleKeys
    var assigned: [String]
    var location: LocationKeys
    var day: DayKeys
    
    init(name: RoleKeys, assigned: [String], location: LocationKeys, day: DayKeys) {
        self.name = name
        self.assigned = assigned
        self.location = location
        self.day = day
    }
}
