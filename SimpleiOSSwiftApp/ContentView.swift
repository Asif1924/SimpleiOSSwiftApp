//
//  ContentView.swift
//  SimpleiOSSwiftApp
//
//  Created by Asif Alli on 2024-03-19.
//

import SwiftUI

struct ContentView: View {
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
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
