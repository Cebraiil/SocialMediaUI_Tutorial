//
//  PostModel.swift
//  SocialMediaUIYT
//
//  Created by EYHAN on 27.02.2024.
//

import Foundation

struct Post: Identifiable {
    let id = UUID()
    let name: String
    let username: String
    let userProfileImage: String
    let postImageName: String
    let description:String
    
    init(name: String, username: String, postImageName: String, description: String) {
        self.name = name
        self.username = username
        self.userProfileImage = ["image1","image2","image3","image4","image5","image6","image7"].randomElement() ?? "default_image"
        self.postImageName = postImageName
        self.description = description
    }
}


let posts = [
    Post(name: "John", username: "john123", postImageName: "image1", description: "Hiking through lush green forests."),
    Post(name: "Emma", username: "emma456", postImageName: "image2", description: "Admiring the serene beauty of a waterfall."),
    Post(name: "Michael", username: "mike789", postImageName: "image3", description: "Camping under a starry sky."),
    Post(name: "Sophia", username: "sophia1", postImageName: "image4", description: "Exploring a tranquil lake."),
    Post(name: "David", username: "dave007", postImageName: "image5", description: "Capturing the sunrise over mountains."),
    Post(name: "Olivia", username: "olivia22", postImageName: "image6", description: "Walking along a pristine beach."),
    Post(name: "Daniel", username: "dan456", postImageName: "image7", description: "Marveling at the colorful sunset by the ocean.")
]

