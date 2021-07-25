//
//  TagsResponse.swift
//  PantipFeed
//
//  Created by thanathip.kumnarai on 25/7/2564 BE.
//

import Foundation

struct TagsResponse: Codable {
    let data: [TagsDetail]?
}

struct TagsDetail: Codable {
    let name: String?
    let imageUrl: [String]?
    
    enum CodingKeys: String, CodingKey {
        case name
        case imageUrl = "image_url"
    }
}
