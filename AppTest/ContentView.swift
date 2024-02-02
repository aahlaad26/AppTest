//
//  ContentView.swift
//  AppTest
//
//  Created by user2 on 01/02/24.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.self) var environment
        @State private var color = Color(red: 0.90, green: 0.70, blue: 0.7)
        @State private var components: Color.Resolved?

        var body: some View {
            VStack {
                ColorPicker("Select your favorite color", selection: $color)

                if let components {
                    Text("R: \(components.red)")
                    Text("G: \(components.green)")
                    Text("B: \(components.blue)")
                    Text("A: \(components.opacity)")
                    Text("HEX: \(components.description)")
                }
            }
            .padding()
            .onChange(of: color, initial: true) { components = color.resolve(in: environment) }
        }
}

#Preview {
    ContentView()
}
