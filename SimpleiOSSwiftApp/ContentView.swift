//
//  ContentView.swift
//  SimpleiOSSwiftApp
//
//  Created by Asif Alli on 2024-03-19.
//

import SwiftUI

struct ContentView: View {
    @State private var value1 = ""
    @State private var value2 = ""
    @State private var value3 = ""
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Text("Hello, world2!")
            Button(action: {
                // Action for button tap
                print("Button tapped!")
            }) {
                Text("My Button")
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 200, height: 50)
                    .background(Color.gray)
                    .cornerRadius(8)
                    .shadow(color: .black, radius: 4, x: 0, y: 2)
            }
            Form {
                Section(header: Text("Enter Data")) {
                    // Text field for first value
                    TextField("Value 1", text: $value1)
                        .textContentType(.oneTimeCode)
                    
                    // Text field for second value
                    TextField("Value 2", text: $value2)
                        .textContentType(.oneTimeCode)
                    
                    // Text field for third value
                    TextField("Value 3", text: $value3)
                        .textContentType(.oneTimeCode)
                }
            }
            
            Gauge(value: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/, in: /*@START_MENU_TOKEN@*/0...1/*@END_MENU_TOKEN@*/) {
                /*@START_MENU_TOKEN@*/Text("Label")/*@END_MENU_TOKEN@*/
            }

            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
