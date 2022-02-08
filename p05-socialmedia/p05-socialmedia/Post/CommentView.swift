//
//  CommentView.swift
//  p05-socialmedia
//
//  Created by Jackson Dowden on 2/7/22.
//

import SwiftUI

struct CommentView: View {
    
    @State var parentPost: Post
    
    var body: some View {
        ScrollView {
            PostView(post: parentPost)
            // Way to disable comment button? Other than just remake PostView??
            Divider()
            Text("List of Comments")
            Spacer()
        }
        .navigationBarTitle("", displayMode: .inline)
    }
}

struct CommentView_Previews: PreviewProvider {
    static var previews: some View {
        CommentView(parentPost: .example)
    }
}
