//
//  EmployeeModel.swift
//  turbo-telegram-2
//
//  Created by m1_air on 8/4/24.
//

import Foundation
import SwiftData

@Model class Employee {
    var firstName: String
    var lastName: String
    var mondayStart: Date
    var mondayEnd: Date
    var mondayPrimary: RoleKeys
    var mondaySecondary: RoleKeys
    var mondayPrimaryLocation: LocationKeys
    var mondaySecondaryLocation: LocationKeys
    var tuesdayStart: Date
    var tuesdayEnd: Date
    var tuesdayPrimary: RoleKeys
    var tuesdaySecondary: RoleKeys
    var tuesdayPrimaryLocation: LocationKeys
    var tuesdaySecondaryLocation: LocationKeys
    var wednesdayStart: Date
    var wednesdayEnd: Date
    var wednesdayPrimary: RoleKeys
    var wednesdaySeconardy: RoleKeys
    var wednesdayPrimaryLocation: LocationKeys
    var wednesdaySeconardyLocation: LocationKeys
    var thursdayStart: Date
    var thursdayEnd: Date
    var thursdayPrimary: RoleKeys
    var thursdaySecondary: RoleKeys
    var thursdayPrimaryLocation: LocationKeys
    var thursdaySecondaryLocation: LocationKeys
    var fridayStart: Date
    var fridayEnd: Date
    var fridayPrimary: RoleKeys
    var fridaySecondary: RoleKeys
    var fridayPrimaryLocation: LocationKeys
    var fridaySecondaryLocation: LocationKeys
    var saturdayStart: Date
    var saturdayEnd: Date
    var saturdayPrimary: RoleKeys
    var saturdaySecondary: RoleKeys
    var saturdayPrimaryLocation: LocationKeys
    var saturdaySecondaryLocation: LocationKeys
    var sundayStart: Date
    var sundayEnd: Date
    var sundayPrimary: RoleKeys
    var sundaySecondary: RoleKeys
    var sundayPrimaryLocation: LocationKeys
    var sundaySecondaryLocation: LocationKeys
    
    init(firstName: String, lastName: String, mondayStart: Date, mondayEnd: Date, mondayPrimary: RoleKeys, mondaySecondary: RoleKeys, mondayPrimaryLocation: LocationKeys, mondaySecondaryLocation: LocationKeys, tuesdayStart: Date, tuesdayEnd: Date, tuesdayPrimary: RoleKeys, tuesdaySecondary: RoleKeys, tuesdayPrimaryLocation: LocationKeys, tuesdaySecondaryLocation: LocationKeys, wednesdayStart: Date, wednesdayEnd: Date, wednesdayPrimary: RoleKeys, wednesdaySeconardy: RoleKeys, wednesdayPrimaryLocation: LocationKeys, wednesdaySeconardyLocation: LocationKeys, thursdayStart: Date, thursdayEnd: Date, thursdayPrimary: RoleKeys, thursdaySecondary: RoleKeys, thursdayPrimaryLocation: LocationKeys, thursdaySecondaryLocation: LocationKeys, fridayStart: Date, fridayEnd: Date, fridayPrimary: RoleKeys, fridaySecondary: RoleKeys, fridayPrimaryLocation: LocationKeys, fridaySecondaryLocation: LocationKeys, saturdayStart: Date, saturdayEnd: Date, saturdayPrimary: RoleKeys, saturdaySecondary: RoleKeys, saturdayPrimaryLocation: LocationKeys, saturdaySecondaryLocation: LocationKeys, sundayStart: Date, sundayEnd: Date, sundayPrimary: RoleKeys, sundaySecondary: RoleKeys, sundayPrimaryLocation: LocationKeys, sundaySecondaryLocation: LocationKeys) {
        self.firstName = firstName
        self.lastName = lastName
        self.mondayStart = mondayStart
        self.mondayEnd = mondayEnd
        self.mondayPrimary = mondayPrimary
        self.mondaySecondary = mondaySecondary
        self.mondayPrimaryLocation = mondayPrimaryLocation
        self.mondaySecondaryLocation = mondaySecondaryLocation
        self.tuesdayStart = tuesdayStart
        self.tuesdayEnd = tuesdayEnd
        self.tuesdayPrimary = tuesdayPrimary
        self.tuesdaySecondary = tuesdaySecondary
        self.tuesdayPrimaryLocation = tuesdayPrimaryLocation
        self.tuesdaySecondaryLocation = tuesdaySecondaryLocation
        self.wednesdayStart = wednesdayStart
        self.wednesdayEnd = wednesdayEnd
        self.wednesdayPrimary = wednesdayPrimary
        self.wednesdaySeconardy = wednesdaySeconardy
        self.wednesdayPrimaryLocation = wednesdayPrimaryLocation
        self.wednesdaySeconardyLocation = wednesdaySeconardyLocation
        self.thursdayStart = thursdayStart
        self.thursdayEnd = thursdayEnd
        self.thursdayPrimary = thursdayPrimary
        self.thursdaySecondary = thursdaySecondary
        self.thursdayPrimaryLocation = thursdayPrimaryLocation
        self.thursdaySecondaryLocation = thursdaySecondaryLocation
        self.fridayStart = fridayStart
        self.fridayEnd = fridayEnd
        self.fridayPrimary = fridayPrimary
        self.fridaySecondary = fridaySecondary
        self.fridayPrimaryLocation = fridayPrimaryLocation
        self.fridaySecondaryLocation = fridaySecondaryLocation
        self.saturdayStart = saturdayStart
        self.saturdayEnd = saturdayEnd
        self.saturdayPrimary = saturdayPrimary
        self.saturdaySecondary = saturdaySecondary
        self.saturdayPrimaryLocation = saturdayPrimaryLocation
        self.saturdaySecondaryLocation = saturdaySecondaryLocation
        self.sundayStart = sundayStart
        self.sundayEnd = sundayEnd
        self.sundayPrimary = sundayPrimary
        self.sundaySecondary = sundaySecondary
        self.sundayPrimaryLocation = sundayPrimaryLocation
        self.sundaySecondaryLocation = sundaySecondaryLocation
    }
}

