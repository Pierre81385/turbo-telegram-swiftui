//
//  RoleView.swift
//  turbo-telegram
//
//  Created by m1_air on 8/3/24.
//

import SwiftUI

struct RoleView: View {
    var body: some View {
        VStack{
            GroupBox(content: {
                VStack{
                    ScrollView(.horizontal) {
                        HStack(spacing: 20) {
                            ForEach(DayKeys.allRawValues, id: \.self) { role in
                                Text(role)
                                    .padding()
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .background(Color.gray.opacity(0.1))
                                    .cornerRadius(8)
                                    .padding(.horizontal)
                            }
                        }.padding()
                    }
                    Spacer()
                    ScrollView{
                        GroupBox(label:
                            Label("Peter", systemImage: "person.circle")
                        , content: {
                            HStack{
                                Text("7:00 AM - 3:00 PM").padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                                
                            }
                            HStack{
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    Text("FOP")
                                }).padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                                Spacer()
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    Text("BOPUS")
                                }).padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                            }
                        }).padding()
                        GroupBox(label:
                                    Label("David", systemImage: "person.circle")
                                , content: {
                            HStack{
                                Text("7:00 AM - 3:00 PM").padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                                
                            }
                            HStack{
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    Text("FOP")
                                }).padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                                Spacer()
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    Text("BOPUS")
                                }).padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                            }
                        }).padding()
                        GroupBox(label:
                                    Label("Christine", systemImage: "person.circle")
                                , content: {
                            HStack{
                                Text("7:00 AM - 3:00 PM").padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                                
                            }
                            HStack{
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    Text("FOP")
                                }).padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                                Spacer()
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    Text("BOPUS")
                                }).padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                            }
                        }).padding()
                    }
                }
            }).padding()
            Spacer()
            ScrollView(.horizontal) {
                HStack(spacing: 20) {
                    ForEach(RoleKeys.allRawValues, id: \.self) { role in
                        Text(role)
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(8)
                            .padding(.horizontal)
                    }
                }.padding()
            }
        }
    }
}

#Preview {
    RoleView()
}
