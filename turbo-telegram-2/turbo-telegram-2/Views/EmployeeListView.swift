//
//  EmployeeListView.swift
//  turbo-telegram-2
//
//  Created by m1_air on 8/4/24.
//

import SwiftUI
import SwiftData

struct EmployeeList: View {
    @Query var allEmployees: [Employee]
    @Environment(\.modelContext) var modelContext
    @State var addEmployee: Bool = false
    
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    Spacer()
                    Button(action: {
                        addEmployee = true
                    }, label: {
                        Image(systemName: "person.crop.circle.fill.badge.plus").resizable().frame(width: 40, height: 35).tint(.black)
                    }).padding()
                        .navigationDestination(isPresented: $addEmployee, destination: {
                            EmployeeDetail()
                        })
                }
                Spacer()
                if(allEmployees.isEmpty) {
                    Text("No Employees to List")
                } else {
                    ScrollView(content: {
                        ForEach(allEmployees) {
                            employee in
                            NavigationLink("\(employee.lastName), \(employee.firstName)", destination: {
                                EmployeeDetail(employee: employee)
                            })
                        }
                    })
                    
                }
            }
        }.tint(.black)
    }
}

#Preview {
    EmployeeList().modelContainer(for: Employee.self, inMemory: false)
}
