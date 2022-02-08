//
//  ProfileHeaderView.swift
//  p05-socialmedia
//
//  Created by Jackson Dowden on 2/8/22.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    let name: String = "App Team Carolina"
    let username: String = "appteamcarolina"
    let profileImageAddress: String = "appteam" // will eventually be url
    
    var body: some View {
        VStack (spacing: 0) {
            Spacer()
            HStack {
                Image(profileImageAddress)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    Text(name)
                    Text("@"+username)
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                }
                Spacer()
                NavigationLink(destination: ProfileSettings()) {
                    Image(systemName: "gearshape")
                        .resizable()
                        .foregroundColor(Color.gray)
                        .frame(width:30,height:30)
                }
            }.padding()
            Divider()
        }
        .frame(height: 130)
        .background(Color(UIColor.systemBackground))
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
