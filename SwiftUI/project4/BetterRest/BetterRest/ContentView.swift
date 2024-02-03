//
//  ContentView.swift
//  BetterRest
//
//  Created by Jeric Hernandez on 2/3/24.
//

import SwiftUI

struct ContentView: View {
    @State var sleepAmount = 8.0

    var body: some View {
        VStack {
            Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, step: 0.25)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
