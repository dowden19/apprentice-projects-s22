//
//  SignUpView.swift
//  p05-socialmedia
//
//  Created by Jackson Dowden on 2/27/22.
//

import SwiftUI

struct SignUpView: View {
    
    @State var username: String
    @State var name: String
    @State var password: String
    @State var secondPassword: String
    
    var body: some View {
        VStack {
            VStack (spacing: 0) {
                HStack {
                    Text("Create Account")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding(.leading, 10)
                .padding(.bottom, 5)
                Divider()
            }
            VStack (spacing: 15) {
                TextField("Username", text: $username)
                    .padding(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 13)
                            .stroke(Color(.systemGray6), lineWidth: 2)
                    )
                TextField("Name", text: $name)
                    .padding(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 13)
                            .stroke(Color(.systemGray6), lineWidth: 2)
                    )
                TextField("Password", text: $password)
                    .padding(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 13)
                            .stroke(Color(.systemGray6), lineWidth: 2)
                    )
                TextField("Confirm password", text: $secondPassword)
                    .padding(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 13)
                            .stroke(Color(.systemGray6), lineWidth: 2)
                    )
            }
                .padding()
            Button {
                // Verify Log-in
            } label: {
                Text("Sign Up")
                    .frame(width:80)
                    .padding(10)
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
            }
            Spacer()
        }
        .padding()
        .navigationBarTitle("", displayMode: .inline)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView(username: "", name: "", password: "", secondPassword: "")
    }
}
