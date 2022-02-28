//
//  LoginView.swift
//  p05-socialmedia
//
//  Created by Jackson Dowden on 2/27/22.
//

import SwiftUI

struct LoginView: View {
    
    @State var username: String
    @State var password: String
    
    var body: some View {
        VStack {
            VStack (spacing: 0) {
                HStack {
                    Text("Log-In")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding(.leading, 10)
                .padding(.bottom, 5)
                Divider()
            }
            VStack (spacing: 15) {
                TextField("Enter username", text: $username)
                    .padding(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 13)
                            .stroke(Color(.systemGray6), lineWidth: 2)
                    )
                TextField("Enter password", text: $password)
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
                Text("Login")
                    .frame(width:70)
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

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(username:"",password:"")
    }
}
