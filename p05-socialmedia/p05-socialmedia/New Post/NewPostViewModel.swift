//
//  NewPostViewModel.swift
//  p05-socialmedia
//
//  Created by Jackson Dowden on 2/27/22.
//

import Foundation

class NewPostViewModel: ObservableObject {
    
    @Published var currentPostText: String = ""
    
    func makePost() {
        let newPost = Post(id: UUID(), authorName: "App Team Carolina", authorUsername: "appteamcarolina", authorImageAddress: "appteam", datePosted: Date(), postContent: currentPostText, likeCount: 0, commentCount: 0)
        PostsService.makePost(post: newPost)
        currentPostText = ""
    }
    
}
