//
//  Employee.swift
//  turbo-telegram
//
//  Created by m1_air on 8/3/24.
//

import Foundation
import SwiftData

@Model class Employee {
    var firstName: String
    var lastName: String
    var mondayStart: Double
    var mondayEnd: Double
    var tuesdayStart: Double
    var tuesdayEnd: Double
    var wednesdayStart: Double
    var wednesdayEnd: Double
    var thursdayStart: Double
    var thursdayEnd: Double
    var fridayStart: Double
    var fridayEnd: Double
    var saturdayStart: Double
    var saturdayEnd: Double
    
    init(firstName: String, lastName: String, mondayStart: Double, mondayEnd: Double, tuesdayStart: Double, tuesdayEnd: Double, wednesdayStart: Double, wednesdayEnd: Double, thursdayStart: Double, thursdayEnd: Double, fridayStart: Double, fridayEnd: Double, saturdayStart: Double, saturdayEnd: Double) {
        self.firstName = firstName
        self.lastName = lastName
        self.mondayStart = mondayStart
        self.mondayEnd = mondayEnd
        self.tuesdayStart = tuesdayStart
        self.tuesdayEnd = tuesdayEnd
        self.wednesdayStart = wednesdayStart
        self.wednesdayEnd = wednesdayEnd
        self.thursdayStart = thursdayStart
        self.thursdayEnd = thursdayEnd
        self.fridayStart = fridayStart
        self.fridayEnd = fridayEnd
        self.saturdayStart = saturdayStart
        self.saturdayEnd = saturdayEnd
    }
}
