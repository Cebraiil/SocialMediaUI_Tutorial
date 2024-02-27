//
//  PostCard.swift
//  SocialMediaUIYT
//
//  Created by EYHAN on 27.02.2024.
//

import SwiftUI

struct PostCard: View {
    let post: Post
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 1) {
                Image(post.userProfileImage)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 3))
                    .shadow(radius: 3)
                    .frame(width: 70, height: 70)
                VStack(alignment: .leading) {
                    Text(post.name)
                        .bold()
                    Text(post.username)
                        .font(.footnote)
                }
                Spacer()
                Image(systemName: "ellipsis")
                    .padding()
           }
            VStack {
                Image(post.postImageName)
                    .resizable()
                    .scaledToFill()
            }
            .frame(maxHeight: 400)
            .background(Color.white)
            .cornerRadius(0)
            
            HStack {
                Button {
                    print("Like")
                } label: {
                    Image(systemName: "heart")
                }
                Button {
                    print("Like")
                } label: {
                    Image(systemName: "message")
                }
                Button {
                    print("Like")
                } label: {
                    Image(systemName: "paperplane")
                }
                Spacer()
                Button {
                    print("Like")
                } label: {
                    Image(systemName: "bookmark")
                }

            }
            .foregroundColor(.black)
            .font(.title3)
            .padding(.horizontal, 10)
            .padding(.vertical, 5)
            
            HStack {
                Text(post.username)
                    .bold()
                    .font(.footnote)
                
                Text(post.description)
                    .font(.footnote)
                    .lineLimit(1)
                    .truncationMode(.tail)
            }
            .padding(.horizontal, 10)
        }
    }
}

#Preview {
    PostCard(post: posts[0])
}
