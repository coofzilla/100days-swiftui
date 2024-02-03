//
//  ContentView.swift
//  BetterRest
//
//  Created by Jeric Hernandez on 2/3/24.
//

import SwiftUI

struct ContentView: View {
    @State var sleepAmount = 8.0
    @State var datePicker = Date()

    var body: some View {
        VStack {
            Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 0.25 ... 12, step: 0.25)
            DatePicker("Please enter a date", selection: $datePicker)
                .labelsHidden()
        }
        .padding()
    }

    func exampleDates() {
        let now = Date()
        let tomorrow = now.addingTimeInterval(TimeInterval(86400))
        let range = now ... tomorrow
    }
}

#Preview {
    ContentView()
}
