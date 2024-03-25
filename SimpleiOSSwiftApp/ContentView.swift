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
    @State private var showAlert = false
    @State private var callAPI = false
    @State private var apiResponse = ""
    
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
                showAlert = true
            }) {
                Text("My Button")
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 200, height: 50)
                    .background(Color.gray)
                    .cornerRadius(8)
                    .shadow(color: .black, radius: 4, x: 0, y: 2)
            }
            Button(action: {
                // Action for button tap
                print("API tapped!")
                Network().makePOSTRequest()
                callAPI = true
            }) {
                Text("API")
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
            
            Gauge(value: 0.8, in: /*@START_MENU_TOKEN@*/0...1/*@END_MENU_TOKEN@*/) {
                /*@START_MENU_TOKEN@*/Text("Label")/*@END_MENU_TOKEN@*/
            }

            
        }
        .padding()
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Alert Title"),
                message: Text("Values entered:\nValue 1: \(value1)\nValue 2: \(value2)\nValue 3: \(value3)"),
                primaryButton: .default(Text("OK")) {
                    // Handle OK button action
                },
                secondaryButton: .cancel()
            )
        }
        .alert(isPresented: $callAPI) {
            Alert(
                title: Text("API Called"),
                message: Text("Response: "),
                primaryButton: .default(Text("OK")) {
                    // Handle OK button action
                },
                secondaryButton: .cancel()
            )
        }
    }
}

struct Network {
    func makeGETRequest() {
        // URL
        guard let url = URL(string: "http://localhost:9786/api/hello") else {
            print("Invalid URL")
            return
        }
        
        // Create URLSession
        let session = URLSession.shared
        
        // Create URLSessionDataTask
        let task = session.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("Error: \(error.localizedDescription)")
                return
            }
            
            // Check if response contains data
            guard let responseData = data else {
                print("No data received")
                return
            }
            
            // Convert data to string (or perform any other parsing you need)
            if let responseString = String(data: responseData, encoding: .utf8) {
                print("Response: \(responseString)") 
            }
        }
        
        // Resume the task
        task.resume()
    }
    
    func makePOSTRequest() {
        // URL
        guard let url = URL(string: "http://localhost:9786/api/hello") else {
            print("Invalid URL")
            return
        }
        
        // Request parameters
        let parameters = ["name": "Asif"]
        
        // Convert parameters to Data
        guard let postData = try? JSONSerialization.data(withJSONObject: parameters) else {
            print("Error encoding parameters")
            return
        }
        
        // Create URLRequest
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = postData
        
        // Create URLSession
        let session = URLSession.shared
        
        // Create URLSessionDataTask
        let task = session.dataTask(with: request) { (data, response, error) in
            if let error = error {
                print("Error: \(error.localizedDescription)")
                return
            }
            
            // Check if response contains data
            guard let responseData = data else {
                print("No data received")
                return
            }
            
            // Convert data to string (or perform any other parsing you need)
            if let responseString = String(data: responseData, encoding: .utf8) {
                print("Response: \(responseString)")
                
            }
            
        }
        
        // Resume the task
        task.resume()
    }
}

#Preview {
    ContentView()
}
