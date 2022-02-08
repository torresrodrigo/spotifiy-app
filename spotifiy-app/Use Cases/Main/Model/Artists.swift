//
//  Artists.swift
//  spotifiy-app
//
//  Created by Rodrigo Torres on 08/02/2022.
//

import Foundation

struct Artists: Codable {

    let items: [ArtistData]
    
    enum CodingKeys: String, CodingKey {
        case items
    }
    
}


