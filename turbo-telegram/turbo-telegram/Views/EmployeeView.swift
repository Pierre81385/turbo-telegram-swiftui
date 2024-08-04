//
//  EmployeeView.swift
//  turbo-telegram
//
//  Created by m1_air on 8/3/24.
//

import SwiftUI

struct EmployeeView: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "person.circle").resizable().frame(width: 100, height: 100)
            }.padding()
            HStack{
                Text("Bishop,")
                Text("Peter")
            }.padding()
            ScrollView(content: {
                GroupBox("Monday", content: {
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
                GroupBox("Tuesday", content: {
                    HStack{
                        Text("7:00 AM - 3:00 PM").padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                        
                    }
                    HStack{
                        Button(action: {}, label: {
                            Text("FOP")
                        }).padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                        Spacer()
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("BOPUS")
                        }).padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                    }
                }).padding()
                GroupBox("Wednesday", content: {
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
                GroupBox("Thursday", content: {
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
                GroupBox("Friday", content: {
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
                GroupBox("Saturday", content: {
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
                GroupBox("Sunday", content: {
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
            })
           
        }
    }
}

#Preview {
    EmployeeView()
}
