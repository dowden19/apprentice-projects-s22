//
//  ContentView.swift
//  p02-apollo
//
//  Created by Samuel Shi on 1/11/22.
//

import SwiftUI

struct ContentView: View {
    // use this array of missions to show your mission content
    let missions: [Mission] = Bundle.main.decode("missions.json")

    var body: some View {
        
        NavigationView {
            List {
                ForEach(missions) { mission in
                    NavigationLink(destination: MissionDetailView(mission: mission)) {
                        HStack {
                            Image(mission.imageName)
                                .resizable()
                                .frame(width: 40.0, height: 40.0)
                            VStack(alignment: .leading) {
                                Text(mission.displayName)
                                Text(mission.formattedLaunchDate)
                            }
                        }
                    }
                }
            }
            .navigationBarTitle("NASA Missions")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
