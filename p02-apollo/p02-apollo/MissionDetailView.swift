//
//  MissionDetailView.swift
//  p02-apollo
//
//  Created by Samuel Shi on 1/12/22.
//

import SwiftUI

struct MissionDetailView: View {
    // use this mission to display the content on the detail view
    let mission: Mission
    
    var body: some View {
        ScrollView {
            VStack {
                Image(mission.imageName)
                    .resizable()
                    .frame(width: 300.0, height: 300.0)
                Text(mission.formattedLaunchDate)
                    .padding()
                Text(mission.description)
                    .padding()
                    .fixedSize(horizontal: false, vertical: true)
                VStack(alignment: .leading) {
                    ForEach(mission.crew) { member in
                        HStack {
                            Image(member.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 100)
                            Text(member.name)
                        }
                    }
                }
            }
            .navigationTitle(mission.displayName)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct MissionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MissionDetailView(mission: .example)
    }
}
