//
//  LastFMAPI.swift
//  LastFMproj
//
//  Created by Aaron Gerell on 9/3/19.
//  Copyright © 2019 MAC. All rights reserved.
//

import Foundation

struct LastFMAPI {
    
    static let base = "http://ws.audioscrobbler.com/2.0/"
    
    static let artistMethod = "?method=artist.search&artist="
    static let albumMethod = "?method=artist.gettopalbums&artist="
    static let trackMethod = "?method=artist.gettoptracks&artist="
    
    static let key = "&api_key=6f91cd309d8efde1ba4ae269e8709d9f&format=json"
    
                               
    
    static func getArtistURL(_ artist: String, _ limit: Int) -> String {
        let newLimit = "&limit=\(limit)"
        return base + artistMethod + artist + newLimit + key
    }
    
    static func getAlbumURL(_ artist: String) -> String {
        return base + albumMethod + artist + key
    }
    
    static func getTrackURL(_ artist: String) -> String {
        return base + trackMethod + artist + key
    }
    
}
