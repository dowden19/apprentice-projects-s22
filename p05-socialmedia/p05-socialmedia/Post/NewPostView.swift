//
//  NewPostView.swift
//  p05-socialmedia
//
//  Created by Jackson Dowden on 2/7/22.
//

import SwiftUI

struct NewPostView: View {
    
    let name: String = "App Team Carolina"
    let username: String = "appteamcarolina"
    let profileImageAddress: String = "appteam"
    
    @State var content = ""
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Image(profileImageAddress)
                        .resizable()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    VStack(alignment: .leading) {
                        Text(name)
                        Text("@"+username)
                            .font(.subheadline)
                            .foregroundColor(Color.gray)
                    }
                    Spacer()
                    Button {
                        // Create new post
                    } label: {
                        Text("Post")
                            .padding(5)
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                    }
                }
                .padding()
                TextEditor(text: $content)
                    .frame(width:350,height:200,alignment: .top)
                    .border(Color.gray)
                Spacer()
            }
            .navigationBarTitle("", displayMode: .inline)
        }
    }
}

struct NewPostView_Previews: PreviewProvider {
    static var previews: some View {
        NewPostView()
    }
}

