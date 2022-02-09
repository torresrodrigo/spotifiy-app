//
//  ArtistData.swift
//  spotifiy-app
//
//  Created by Rodrigo Torres on 08/02/2022.
//

import Foundation

struct ArtistData: Codable {
    
    let name: String
    let images: [ArtistImage]
    
    enum CodingKeys: String, CodingKey {
        case name
        case images
    }
}

struct ArtistImage: Codable {
    
    let url: String
    
    enum CodingKeys: String, CodingKey {
        case url
    }
    
}
