//
//  EmployeeSetup.swift
//  turbo-telegram-2
//
//  Created by m1_air on 8/4/24.
//

import Foundation

import SwiftUI

struct EmployeeSetup: View {
    @State var employee: Employee = Employee(firstName: "", lastName: "", mondayStart: Date(), mondayEnd: Date(), mondayPrimary: RoleKeys.none, mondaySecondary: RoleKeys.none, mondayPrimaryLocation: LocationKeys.none, mondaySecondaryLocation: LocationKeys.none, tuesdayStart: Date(), tuesdayEnd: Date(), tuesdayPrimary: RoleKeys.none, tuesdaySecondary: RoleKeys.none, tuesdayPrimaryLocation: LocationKeys.none, tuesdaySecondaryLocation: LocationKeys.none, wednesdayStart: Date(), wednesdayEnd: Date(), wednesdayPrimary: RoleKeys.none, wednesdaySeconardy: RoleKeys.none, wednesdayPrimaryLocation: LocationKeys.none, wednesdaySeconardyLocation: LocationKeys.none, thursdayStart: Date(), thursdayEnd: Date(), thursdayPrimary: RoleKeys.none, thursdaySecondary: RoleKeys.none, thursdayPrimaryLocation: LocationKeys.none, thursdaySecondaryLocation: LocationKeys.none, fridayStart: Date(), fridayEnd: Date(), fridayPrimary: RoleKeys.none, fridaySecondary: RoleKeys.none, fridayPrimaryLocation: LocationKeys.none, fridaySecondaryLocation: LocationKeys.none, saturdayStart: Date(), saturdayEnd: Date(), saturdayPrimary: RoleKeys.none, saturdaySecondary: RoleKeys.none, saturdayPrimaryLocation: LocationKeys.none, saturdaySecondaryLocation: LocationKeys.none, sundayStart: Date(), sundayEnd: Date(), sundayPrimary: RoleKeys.none, sundaySecondary: RoleKeys.none, sundayPrimaryLocation: LocationKeys.none, sundaySecondaryLocation: LocationKeys.none)
    @Environment(\.modelContext) var modelContext
    @State var saved: Bool = false
    
    var body: some View {
        NavigationStack{
            VStack{
                GroupBox(content: {
                    VStack{
                        TextField("First Name", text: $employee.firstName).padding()
                        TextField("Last Name", text: $employee.lastName).padding()
                        Button("Save", action: {
                            modelContext.insert(employee)
                            saved = true
                        }).tint(.black).navigationDestination(isPresented: $saved, destination: {
                            //EmployeeDetail(employee: $employee).navigationBarBackButtonHidden(true)
                        })
                    }
                }).padding()
                
                ScrollView(content: {
                    GroupBox("Monday", content: {
                        VStack{
                            DatePicker("Start", selection: $employee.mondayStart, displayedComponents: .hourAndMinute)
                            DatePicker("End", selection: $employee.mondayEnd, displayedComponents: .hourAndMinute)
                            
                        }
                    })
                    GroupBox("Tuesday", content: {
                        VStack{
                            DatePicker("Start", selection: $employee.tuesdayStart, displayedComponents: .hourAndMinute)
                            DatePicker("End", selection: $employee.tuesdayEnd, displayedComponents: .hourAndMinute)
                            
                        }
                    })
                    GroupBox("Wednesday", content: {
                        VStack{
                            DatePicker("Start", selection: $employee.wednesdayStart, displayedComponents: .hourAndMinute)
                            DatePicker("End", selection: $employee.wednesdayEnd, displayedComponents: .hourAndMinute)
                            
                        }
                    })
                    GroupBox("Thursday", content: {
                        VStack{
                            DatePicker("Start", selection: $employee.thursdayStart, displayedComponents: .hourAndMinute)
                            DatePicker("End", selection: $employee.thursdayEnd, displayedComponents: .hourAndMinute)
                            
                        }
                    })
                    GroupBox("Friday", content: {
                        VStack{
                            DatePicker("Start", selection: $employee.fridayStart, displayedComponents: .hourAndMinute)
                            DatePicker("End", selection: $employee.fridayEnd, displayedComponents: .hourAndMinute)
                            
                        }
                    })
                    GroupBox("Saturday", content: {
                        VStack{
                            DatePicker("Start", selection: $employee.saturdayStart, displayedComponents: .hourAndMinute)
                            DatePicker("End", selection: $employee.saturdayEnd, displayedComponents: .hourAndMinute)
                            
                        }
                    })
                    GroupBox("Sunday", content: {
                        VStack{
                            DatePicker("Start", selection: $employee.sundayStart, displayedComponents: .hourAndMinute)
                            DatePicker("End", selection: $employee.sundayEnd, displayedComponents: .hourAndMinute)
                            
                        }
                    })
                })
                
            }
        }
    }
}

#Preview {
    EmployeeSetup().modelContainer(for: Employee.self, inMemory: false)
}
