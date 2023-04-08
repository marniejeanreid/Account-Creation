//
//  ContentView.swift
//  Account Creation
//
//  Created by scholar on 3/6/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var userName = ""
    @State var password = ""
    @State private var fullName = ""
    @State private var birthday = Date()


    var body: some View {
        VStack {
            HStack (spacing: 2) {
                Text("Username: ")
                    .padding(.leading)
                TextField("Enter username here", text: $userName)
                    .autocapitalization(.none)
                    .textFieldStyle(.roundedBorder)
                //onChangeof is nice to track printing at the start - need needed for the rest
//                    .onChange(of: userName) { newValue in
//                        print("Name changed to \(userName)!")
//                    }
                    .padding(.trailing)
            }
            HStack (spacing: 2) {
                Text("Password: ")
                    .padding(.leading)
                TextField("Enter password here", text: $password)
                //How to turn of autocaps
                    .autocapitalization(.none)
                    .textFieldStyle(.roundedBorder)
//                    .onChange(of: password) { newValue in
//                        print("Name changed to \(password)!")
//                    }
                    .padding(.trailing)
            }
            HStack (spacing: 2) {
                Text("Full Name: ")
                    .padding(.leading)
                TextField("Enter password here", text: $fullName)
                    .autocapitalization(.words)
                    .textFieldStyle(.roundedBorder)
//                    .onChange(of: password) { newValue in
//                        print("Name changed to \(password)!")
//                    }
                    .padding(.trailing)
            }
            //Cool excuse to show off date picker
//                DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { Text("Date of Birth: ") })
//                .padding()
            DatePicker(
                "Date of Birth: ",
                selection: $birthday,
                displayedComponents: [.date]
            )
            //can change style of date picker
            //.datePickerStyle(.graphical)
            .padding()
                VStack (alignment: .leading) {
                    Text("Username: \(userName)")
                    Divider()
                    //Could be a spicy challenge to have password change to **** - same # as letter's typed
                    Text("Password: \(password)")
                    Divider()
                    Text("Full Name: \(fullName)")
                    Divider()
                    Text("Date of Birth: \(birthday.formatted(date: .long, time: .omitted))")
//                    Text("Date of Birth: \(birthday, format: .dateTime.day().month())")
                    Divider()
                }
                .padding()
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
