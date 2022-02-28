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
    
    @StateObject var vm = NewPostViewModel()
    
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
                        vm.makePost()
                    } label: {
                        Text("Post")
                            .frame(width:50)
                            .padding(6)
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                    }
                }
                .padding()
                TextEditor(text: $vm.currentPostText)
                    .frame(width:350,height:200,alignment: .top)
                    .overlay(
                        RoundedRectangle(cornerRadius: 13)
                            .stroke(Color(.systemGray6), lineWidth: 2)
                    )
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

