//
//  HeaderView.swift
//  p05-socialmedia
//
//  Created by Jackson Dowden on 2/7/22.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack (spacing: 0) {
            Spacer()
            HStack {
                Text("bluebird")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding(.leading, 10)
            .padding(.bottom, 5)
            .background(Color(UIColor.systemBackground))
            .edgesIgnoringSafeArea(.top)
            Divider()
        }
        .frame(height: 100)
        .background(Color(UIColor.systemBackground))
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
