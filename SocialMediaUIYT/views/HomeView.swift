//
//  HomeView.swift
//  SocialMediaUIYT
//
//  Created by EYHAN on 27.02.2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                StoryView()
                Divider()
                PostListView(posts: posts)
            }
            .navigationTitle("Cebrail")
            .navigationBarItems(leading: Image(systemName: "pencil.and.outline"), trailing: Image(systemName: "bell.fill"))
        }
    }
}

#Preview {
    HomeView()
}
