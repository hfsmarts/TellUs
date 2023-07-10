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
    
    private init() {
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

