//
//  ContentView.swift
//  Moonshot
//
//  Created by Natasha Godwin on 6/1/20.
//  Copyright © 2020 Natasha Godwin. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    // The types are specified here because decode method was written with generics
    // Swift needs to know exactly what type each is
    let astronauts: [Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    var body: some View {
        NavigationView {
            List(missions) { mission in
                NavigationLink(destination: Text("Detail View")) {
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 44, height: 44)
                    
                    VStack(alignment: .leading) {
                        Text(mission.displayName)
                            .font(.headline)
                        Text(mission.launchDate ?? "N/A")
                    }
                }
            }
           .navigationBarTitle("Moonshot")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
