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

struct PrimaryModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 10))
    }
}

struct ContentView: View {
    @ViewBuilder var someViewBuilder: some View {
        HStack {
            Text("Foo")
            Text("Bar")
        }
    }

    var somePropertyView = Text("I'm a property")

    var someComputedView: some View {
        Text("I was computed")
    }

    var body: some View {
        VStack {
            SomeText(text: "Pineapple")
            someViewBuilder
                .modifier(PrimaryModifier())
            someComputedView
            somePropertyView
            Text("Hello, world!")
                .primaryModifier()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

extension View {
    func primaryModifier() -> some View {
        modifier(PrimaryModifier())
    }
}
