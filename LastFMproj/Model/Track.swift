//
//  Track.swift
//  LastFMproj
//
//  Created by Aaron Gerell on 9/3/19.
//  Copyright © 2019 MAC. All rights reserved.
//

import Foundation

struct TrackResult: Decodable {
    let toptracks: TrackInfo
}

struct TrackInfo: Decodable {
    let track: [Track]
}

class Track: Decodable {
    
    let name: String
    let playCount: String
    let url: String
    let image: [Image]
    
    private enum CodingKeys: String, CodingKey {
        case name
        case playCount = "play count"
        case url
        case image
    }
}
