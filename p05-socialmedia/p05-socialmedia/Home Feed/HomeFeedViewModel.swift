//
//  HomeFeedViewModel.swift
//  p05-socialmedia
//
//  Created by Jackson Dowden on 2/27/22.
//

import Foundation

class HomeFeedViewModel: ObservableObject {
    
    @Published var posts: [Post] = []
    
    init() {
        fetchPosts()
    }
    
    func fetchPosts() {
        posts = PostsService.getHomeFeed()
    }
    
}
