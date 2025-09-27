//
//  ContentView.swift
//  test
//
//  Created by senthil on 08/09/25.
//

// Create a SwiftUI view that displays the current time and updates automatically every second.



import SwiftUI

struct ContentView: View {
    
    @State private var currentTime: String = ""
    @State private var timer: Timer?
        
    
    func setupTimer() {
        
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {(val) in
            currentTime = "\(Date())"
        })

    }
    
    
    var body: some View {

        VStack {
            
            Text("Current Time: \(currentTime)")
                .font(.subheadline)
        }
        .onAppear()
        {
            setupTimer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
