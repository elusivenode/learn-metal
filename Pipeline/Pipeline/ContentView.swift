//
//  ContentView.swift
//  Pipeline
//
//  Created by Hamish MacDonald on 23/11/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MetalView()
            .border(Color.black, width: 2)
            Text("Hello, Metal!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
