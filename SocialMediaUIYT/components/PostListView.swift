//
//  PostListView.swift
//  SocialMediaUIYT
//
//  Created by EYHAN on 27.02.2024.
//

import SwiftUI

struct PostListView: View {
    let posts: [Post]
    var body: some View {
        VStack {
            ForEach(posts) { post in
                PostCard(post: post)
                    .listRowInsets(EdgeInsets())
                    .listRowSeparator(.hidden)
                    .padding(.vertical, 7)
            }
        }
        .listStyle(.plain)
    }
}
