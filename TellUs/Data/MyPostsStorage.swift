//
//  MyPostsStorage.swift
//  TellUs
//
//  Created by Harun Fazlic on 19. 6. 2023..
//

import Foundation

/*TEL-665*/
class MyPostsStorage {
    static let shared = MyPostsStorage()
    private var privatePostsArray = [PostModel]() // Private array to store the posts
    
    var myPosts: [PostModel] {
        get {
            return privatePostsArray
        }
        set {
            privatePostsArray = newValue
        }
    }
}
