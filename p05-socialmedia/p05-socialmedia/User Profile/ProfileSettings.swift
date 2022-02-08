//
//  ProfileSettings.swift
//  p05-socialmedia
//
//  Created by Samuel Shi on 2/2/22.
//

import SwiftUI

struct ProfileSettings: View {
    
    @State var name: String = "App Team Carolina"
    @State var username: String = "appteamcarolina"
    @State var profileImageAddress: String = "appteam"
    
    var body: some View {
        ScrollView {
            Text("Settings")
                .fontWeight(.bold)
                .font(.largeTitle)
            HStack {
                Image(profileImageAddress)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    TextField("Edit name", text: $name)
                    // Add a @ in front??
                    TextField("Edit username", text: $username)
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                }
                Spacer()
                Button {
                    // Delete account
                } label: {
                    Image(systemName: "trash")
                        .resizable()
                        .foregroundColor(Color.red)
                        .frame(width: 15, height: 15)
                }
            }
            .padding()
        }
        .navigationBarTitle("", displayMode: .inline)
    }
}

struct ProfileSettings_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSettings()
    }
}
