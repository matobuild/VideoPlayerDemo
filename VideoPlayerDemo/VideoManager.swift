//
//  VideoManager.swift
//  VideoPlayerDemo
//
//  Created by kittawat phuangsombat on 2022/9/10.
//

import Foundation

enum Query: String, CaseIterable {
    case nature, animals, people, ocean, food
}

struct ResponseBody:Decodable {
    var page: Int
    var perPage: Int
    var totalResults: Int
    var url: String
    var videos: [Video]
}

struct Video: Identifiable, Decodable {
    var id: Int
    var img: String
    var duration: Int
    var user: User
    var videoFiles: [VideoFile]
    
    struct User: Identifiable, Decodable {
        var id: Int
        var name: String
        var url: String
    }
    
    struct VideoFile: Identifiable, Decodable {
        var id: Int
        var quality: String
        var fileType: String
        var link: String
    }
}
