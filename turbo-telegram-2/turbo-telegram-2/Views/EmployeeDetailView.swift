//
//  EmployeeDetailView.swift
//  turbo-telegram-2
//
//  Created by m1_air on 8/4/24.
//

import Foundation
import SwiftUI

struct EmployeeDetail: View {
    @State var toList: Bool = false
    @State var insertEmployee: Bool = false
//    @State var employeePassed: Employee?
    @State var employee: Employee = Employee(firstName: "", lastName: "", mondayStart: Date(), mondayEnd: Date(), mondayPrimary: RoleKeys.none, mondaySecondary: RoleKeys.none, mondayPrimaryLocation: LocationKeys.none, mondaySecondaryLocation: LocationKeys.none, tuesdayStart: Date(), tuesdayEnd: Date(), tuesdayPrimary: RoleKeys.none, tuesdaySecondary: RoleKeys.none, tuesdayPrimaryLocation: LocationKeys.none, tuesdaySecondaryLocation: LocationKeys.none, wednesdayStart: Date(), wednesdayEnd: Date(), wednesdayPrimary: RoleKeys.none, wednesdaySeconardy: RoleKeys.none, wednesdayPrimaryLocation: LocationKeys.none, wednesdaySeconardyLocation: LocationKeys.none, thursdayStart: Date(), thursdayEnd: Date(), thursdayPrimary: RoleKeys.none, thursdaySecondary: RoleKeys.none, thursdayPrimaryLocation: LocationKeys.none, thursdaySecondaryLocation: LocationKeys.none, fridayStart: Date(), fridayEnd: Date(), fridayPrimary: RoleKeys.none, fridaySecondary: RoleKeys.none, fridayPrimaryLocation: LocationKeys.none, fridaySecondaryLocation: LocationKeys.none, saturdayStart: Date(), saturdayEnd: Date(), saturdayPrimary: RoleKeys.none, saturdaySecondary: RoleKeys.none, saturdayPrimaryLocation: LocationKeys.none, saturdaySecondaryLocation: LocationKeys.none, sundayStart: Date(), sundayEnd: Date(), sundayPrimary: RoleKeys.none, sundaySecondary: RoleKeys.none, sundayPrimaryLocation: LocationKeys.none, sundaySecondaryLocation: LocationKeys.none)
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button(action: {
                    if(insertEmployee) {
                        modelContext.insert(employee)
                    } 
                    toList = true
                }, label: {
                    Image(systemName: "person.fill.checkmark").resizable().frame(width: 50, height: 35).tint(.black)
                }).padding()
                    .navigationDestination(isPresented: $toList, destination: {
                        EmployeeList().navigationBarBackButtonHidden(true)
                    })
            }
            HStack{
                Image(systemName: "person.circle").resizable().frame(width: 100, height: 100)
            }.padding()
            HStack{
                TextField("First Name", text: $employee.firstName).padding()
                TextField("Last Name", text: $employee.lastName).padding()
            }.padding()
            ScrollView(content: {
                Detail(day: "MONDAY", startTime: $employee.mondayStart, endTime: $employee.mondayEnd, primaryRole: $employee.mondayPrimary, secondaryRole: $employee.mondaySecondary, primaryLocation: $employee.mondayPrimaryLocation, secondaryLocation: $employee.mondaySecondaryLocation)
                Detail(day: "TUESDAY", startTime: $employee.tuesdayStart, endTime: $employee.tuesdayEnd, primaryRole: $employee.tuesdayPrimary, secondaryRole: $employee.tuesdaySecondary, primaryLocation: $employee.tuesdayPrimaryLocation, secondaryLocation: $employee.tuesdaySecondaryLocation)
                Detail(day: "WEDNESDAY", startTime: $employee.wednesdayStart, endTime: $employee.wednesdayEnd, primaryRole: $employee.wednesdayPrimary, secondaryRole: $employee.wednesdaySeconardy, primaryLocation: $employee.wednesdayPrimaryLocation, secondaryLocation: $employee.wednesdaySeconardyLocation)
                Detail(day: "THURSDAY", startTime: $employee.thursdayStart, endTime: $employee.thursdayEnd, primaryRole: $employee.thursdayPrimary, secondaryRole: $employee.thursdaySecondary, primaryLocation: $employee.thursdayPrimaryLocation, secondaryLocation: $employee.thursdaySecondaryLocation)
                Detail(day: "FRIDAY", startTime: $employee.fridayStart, endTime: $employee.fridayEnd, primaryRole: $employee.fridayPrimary, secondaryRole: $employee.fridaySecondary, primaryLocation: $employee.fridayPrimaryLocation, secondaryLocation: $employee.fridaySecondaryLocation)
                Detail(day: "SATURDAY", startTime: $employee.saturdayStart, endTime: $employee.saturdayEnd, primaryRole: $employee.saturdayPrimary, secondaryRole: $employee.saturdaySecondary, primaryLocation: $employee.saturdayPrimaryLocation, secondaryLocation: $employee.saturdaySecondaryLocation)
                Detail(day: "SUNDAY", startTime: $employee.sundayStart, endTime: $employee.sundayEnd, primaryRole: $employee.sundayPrimary, secondaryRole: $employee.sundaySecondary, primaryLocation: $employee.sundayPrimaryLocation, secondaryLocation: $employee.sundaySecondaryLocation)
            }).padding()
        }.ignoresSafeArea(SafeAreaRegions.all, edges: .bottom)
            .onAppear{
                if(employee.firstName == "")
                {
                    insertEmployee = true
                }
            }
    }
}

//#Preview {
//    EmployeeDetail()
//}

struct Detail: View {
    var day: String
    @Binding var startTime: Date
    @Binding var endTime: Date
    @Binding var primaryRole: RoleKeys
    @Binding var secondaryRole: RoleKeys
    @Binding var primaryLocation: LocationKeys
    @Binding var secondaryLocation: LocationKeys
    
    
    var body: some View {
        GroupBox(content: {
                VStack{
                    if(endTime.timeIntervalSince1970 - startTime.timeIntervalSince1970 < 60) {
                        Text("Not scheduled for \(day).").foregroundStyle(.red)
                    } else {
                        Text("")
                    }
                    HStack{
                        Menu(primaryRole.rawValue) {
                            ForEach(RoleKeys.allCasesArray, id: \.self) { role in
                                Button(action: {
                                    primaryRole = role
                                    print("Selected role: \(role.rawValue)")
                                }) {
                                    Text(role.rawValue)
                                        .padding()
                                        .background(Color.black)
                                        .foregroundColor(.white)
                                        .cornerRadius(8)
                                }
                                .padding(.bottom, 4)
                                
                            }
                        }.tint(.black)
                        Menu(primaryLocation.rawValue) {
                            ForEach(LocationKeys.allCasesArray, id: \.self) { location in
                                Button(action: {
                                    primaryLocation = location
                                    print("Selected role: \(location.rawValue)")
                                }) {
                                    Text(location.rawValue)
                                        .padding()
                                        .background(Color.black)
                                        .foregroundColor(.white)
                                        .cornerRadius(8)
                                }
                                .padding(.bottom, 4)
                                
                            }
                        }.tint(.black)
                    }
                    GroupBox(day, content: {
                        VStack{
                            
                            HStack{
                                DatePicker("Start:", selection: $startTime, displayedComponents: .hourAndMinute)
                                DatePicker("End:", selection: $endTime, displayedComponents: .hourAndMinute)
                                
                            }
                        }
                    })
                    HStack{
                        Menu(secondaryRole.rawValue) {
                            ForEach(RoleKeys.allCasesArray, id: \.self) { role in
                                Button(action: {
                                    secondaryRole = role
                                    print("Selected role: \(role.rawValue)")
                                }) {
                                    Text(role.rawValue)
                                        .padding()
                                        .background(Color.black)
                                        .foregroundColor(.white)
                                        .cornerRadius(8)
                                }
                                .padding(.bottom, 4)
                                
                            }
                        }.tint(.black)
                        Menu(secondaryLocation.rawValue) {
                            ForEach(LocationKeys.allCasesArray, id: \.self) { location in
                                Button(action: {
                                    secondaryLocation = location
                                    print("Selected role: \(location.rawValue)")
                                }) {
                                    Text(location.rawValue)
                                        .padding()
                                        .background(Color.black)
                                        .foregroundColor(.white)
                                        .cornerRadius(8)
                                }
                                .padding(.bottom, 4)
                                
                            }
                        }.tint(.black)
                    }
                }
            })
    }
}

