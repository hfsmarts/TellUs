//
//  MyPosts.swift
//  TellUs
//
//  Created by Harun Fazlic on 9. 7. 2023..
//

import Foundation

/*TEL-666*/
class MyPostsDB {
    static let shared = MyPostsDB()
    var myPosts: [PostModel] = [] 
    let queue = DispatchQueue(label: "com.example.MyPostsDB.queue")
    
    /*TEL-667*/
    /*TEL-636*/
    private init() {
        let initialPost = PostModel(location: "No location", likeCount: 0, text: "No post added yet!", dislikeCount: 0) /*TEL-674*/
               myPosts.append(initialPost)
    }
    
    func appendPost(_ newPost: PostModel) {
        queue.async { [weak self] in
            guard let self = self else { return }
            self.myPosts.append(newPost)
        }
    }
    
    func removePost(at index: Int) {
        queue.async { [weak self] in
            guard let self = self else { return }
            guard self.myPosts.indices.contains(index) else { return }
            self.myPosts.remove(at: index)
        }
    }
    
    
}

