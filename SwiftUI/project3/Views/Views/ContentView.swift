//
//  ContentView.swift
//  Views
//
//  Created by Jeric Hernandez on 2/3/24.
//

import SwiftUI

struct SomeText: View {
    var text: String

    var body: some View {
        Text(text)
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            SomeText(text: "Pineapple")
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
