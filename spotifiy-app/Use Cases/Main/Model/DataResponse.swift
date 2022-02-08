//
//  DataResponse.swift
//  spotifiy-app
//
//  Created by Rodrigo Torres on 08/02/2022.
//

import Foundation

struct DataResponse: Codable {
    
    let artists: Artists
    
    enum CodingKeys: String, CodingKey {
        case artists
    }
}
