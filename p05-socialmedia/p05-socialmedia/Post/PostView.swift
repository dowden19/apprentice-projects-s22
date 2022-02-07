//
//  PostView.swift
//  p05-socialmedia
//
//  Created by Samuel Shi on 1/31/22.
//

import SwiftUI

struct PostView: View {
    @State var post: Post
    @State var liked = false
    @State var color = Color.gray

    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                Image(post.authorImageAddress)
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    Text(post.authorName)
                    Text("@"+post.authorUsername)
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                }
                Spacer()
                Text(post.formattedDate)
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
            }
            .padding(.top, 7)
            .padding(.bottom, 7)
            
            Text(post.postContent)
                .multilineTextAlignment(.leading)
            
            HStack (spacing: 0){
                HStack (spacing: 4) {
                    Button {
                        liked.toggle()
                        color = liked ? Color.red : Color.gray
                        post.likeCount = liked ? post.likeCount + 1 : post.likeCount - 1
                    } label: {
                        Image(systemName: "heart")
                            .resizable()
                            .foregroundColor(color)
                            .frame(width: 15, height: 15)
                    }
                    Text(String(post.likeCount))
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                }
                .padding(7)
                HStack (spacing: 4) {
                    NavigationLink(destination: CommentView()) {
                        Image(systemName: "bubble.left")
                            .resizable()
                            .foregroundColor(Color.gray)
                            .frame(width: 15, height: 15)
                    }
                    Text(String(post.commentCount))
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                }
                .padding(7)
                Spacer()
            }
        }
        .padding(.top, 2)
        .padding(.leading, 10)
        .padding(.trailing, 10)
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: .example)
            .bothColorSchemes()
    }
}
