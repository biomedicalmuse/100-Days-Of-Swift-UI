//
//  ContentView.swift
//  Settings Clone
//
//  Created by Natasha Godwin on 4/2/20.
//  Copyright © 2020 Natasha Godwin. All rights reserved.
//

import SwiftUI

// New Information:
    // HStack - aligns views horizontally
    // VStack - aligns views vertically
    // .font() - a modifier that changes font size
    // Toggle() - a toggle button

struct ContentView: View {
    @State private var airplaneMode = true
    @State private var name = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    HStack {
                        
                       Image(systemName: "person.crop.circle.fill") // SF Symbol
                        .font(.largeTitle) // SF Symbols can be used like regular fonts
                        VStack(alignment: .leading) {
                            // Users can change the value of name
                            TextField("Enter Name", text: $name)
                            .font(.title)
                           Text("Apple ID, iCloud, iTunes, & App Store")
                            .font(.subheadline)
                       }
                    }
                }
                Section {
                    HStack {
                        Image(systemName: "airplane")
                        Text("Airplane Mode")
                        Spacer() // pushes the button to the far right
                        Toggle(isOn: $airplaneMode) {
                            Text("Tap Me")
                        }.labelsHidden()
                        
                    }
                    HStack {
                        Image(systemName: "wifi")
                        Text("Wi-Fi")
                    }
                    HStack {
                        Image(systemName: "radiowaves.left")
                        Text("Bluetooth")
                    }
                    HStack {
                        Image(systemName: "antenna.radiowaves.left.and.right")
                        Text("Cellular")
                    }
                    HStack {
                        Image(systemName: "link")
                        Text("Personal Hotspot")
                    }
                }
                
                Section {
                    HStack {
                        Image(systemName: "envelope.badge.fill")
                        Text("Notifications")
                    }
                    HStack {
                        Image(systemName: "speaker.3.fill")
                        Text("Sounds and Haptics")
                    }
                    HStack {
                        Image(systemName: "moon.fill")
                        Text("Do Not Disturb")
                    }
                    HStack {
                        Image(systemName: "hourglass")
                        Text("Screen Time")
                    }
                }
                
            }
                .navigationBarTitle("Settings") // Adds a title to the navigation bar
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


