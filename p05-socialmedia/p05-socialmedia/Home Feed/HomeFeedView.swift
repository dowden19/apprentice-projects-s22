//
//  HomeFeedView.swift
//  p05-socialmedia
//
//  Created by Samuel Shi on 2/1/22.
//

import SwiftUI

struct HomeFeedView: View {
    let posts: [Post] = PostList.defaultPosts
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(spacing: 10, pinnedViews: .sectionHeaders) {
                    Section(header: HeaderView()) {
                        ForEach(posts) { post in
                            PostView(post: post)
                            Divider()
                        }
                    }
                    Spacer()
                }
            }
            .navigationBarHidden(true)
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct HomeFeedView_Previews: PreviewProvider {
    static var previews: some View {
        HomeFeedView()
            .bothColorSchemes()
    }
}
