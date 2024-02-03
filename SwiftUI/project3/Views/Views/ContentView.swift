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
    @ViewBuilder var someViewBuilder: some View {
        Text("Foo")
        Text("Bar")
    }

    var body: some View {
        VStack {
            SomeText(text: "Pineapple")
            someViewBuilder
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
