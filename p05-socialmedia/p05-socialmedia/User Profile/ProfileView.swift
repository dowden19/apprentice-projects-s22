//
//  ProfileView.swift
//  p05-socialmedia
//
//  Created by Samuel Shi on 2/2/22.
//

import SwiftUI

struct ProfileView: View {
    let name: String = "App Team Carolina"
    let username: String = "appteamcarolina"
    let profileImageAddress: String = "appteam" // will eventually be url
    
    let userPosts: [Post] = PostList.defaultPosts

    var body: some View {
        NavigationView {
            ScrollView {
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
                ForEach(userPosts) { post in
                    PostView(post: post)
                    Divider()
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .bothColorSchemes()
    }
}
