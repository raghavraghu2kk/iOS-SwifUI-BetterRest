//
//  ContentView.swift
//  BetterRest-CoreML
//
//  Created by Raghavendra Mirajkar on 26/03/24.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date.now
    
    var body: some View {
        Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount , in: 4...12,step: 0.25)
            .padding()
        DatePicker("Pick a date", selection: $wakeUp, in: Date.now...)
            .labelsHidden()
            .padding()
        Text(Date.now.formatted(date: .complete, time: .complete))
    }
}

#Preview {
    ContentView()
}

