//
//  TopicResponse.swift
//  PantipFeed
//
//  Created by thanathip.kumnarai on 25/7/2564 BE.
//

import Foundation

struct TopicResponse: Codable {
    let success: Bool?
    let data: TopicList?
}

struct TopicList: Codable {
    let topicList: [TopicDetail]?
    
    enum CodingKeys: String, CodingKey {
        case topicList = "topic_list"
    }
}

struct TopicDetail: Codable {
    let title: String?
    let coverImg: String?
    let author: String?
    let viewCount: String?
    
    enum CodingKeys: String, CodingKey {
        case title
        case coverImg = "cover_img"
        case author
        case viewCount = "view_count"
    }
}
