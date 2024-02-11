//
//  ContentView.swift
//  BetterRest
//
//  Created by Jeric Hernandez on 2/3/24.
//

import SwiftUI

struct HeadlineText: View {
    var text: String

    var body: some View {
        Text(text)
            .font(.headline)
    }
}

struct ContentView: View {
    @State private var wakeUp = Date()
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1

    var body: some View {
        NavigationStack {
            VStack {
                HeadlineText(text: "When do you want to wake up?")
                DatePicker("Please enter a date", selection: $wakeUp, displayedComponents: .hourAndMinute)
                    .labelsHidden()
                HeadlineText(text: "Desired amount of sleep")
                Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4 ... 12, step: 0.25)
                HeadlineText(text: "Daily coffee intake")
                Stepper("\(coffeeAmount) cup(s)", value: $coffeeAmount, in: 1 ... 20)
            }
            .navigationTitle("Better Rest")
            .toolbar {
                Button("calculate", action: calculateBedTime)
            }
        }
    }

    func calculateBedTime() {}
}

#Preview {
    ContentView()
}
