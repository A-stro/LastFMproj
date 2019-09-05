//
//  Artist.swift
//  LastFMproj
//
//  Created by Aaron Gerell on 9/3/19.
//  Copyright © 2019 MAC. All rights reserved.
//

import Foundation

import Foundation

struct ArtistResults: Decodable {
    let results: ArtistMatches
}

struct ArtistMatches: Decodable {
    let artistmatches: ArtistInfo
}

struct ArtistInfo: Decodable {
    let artist: [Artist]
}

class Artist: Decodable {
    
    let name: String
    let listeners: String
    let url: String
    let image: [Image]
    
}

struct Image: Decodable {
    
    let text: String
    let size: String
    
    private enum CodingKeys: String, CodingKey {
        case text = "#text"
        case size
    }
}

struct Limits {
    
    enum Keys: String {
        case hash = "hash"
        case userName = "name"
        case artistsCount = "count"
    }
    
}

enum Content {
    case artist(Artist)
    case album(Album)
    case track(Track)
}

