//
//  PostModel.swift
//  TellUs
//
//  Created by Harun Fazlic on 1. 2. 2023..
//

/*TEL-472*/
import Foundation

/*TEL-471*/
/*TEL-486*/
/*TEL-622*/

class PostModel {
    var location: String
    var likeCount: Int
    var text: String
    var dislikeCount: Int
    
    init(location: String, likeCount: Int, text: String, dislikeCount: Int) {
        self.location = location
        self.likeCount = likeCount
        self.text = text
        self.dislikeCount = dislikeCount
    }
}
