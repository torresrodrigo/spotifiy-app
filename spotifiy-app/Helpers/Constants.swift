//
//  Constants.swift
//  spotifiy-app
//
//  Created by Rodrigo Torres on 08/02/2022.
//

import Foundation
import Alamofire

struct Constants {
    
    static let base_url = "https://api.spotify.com/v1/"
    static let SEARCH_ENDPOINT = base_url+"/search?"
    
    
    static let bearerToken = "BQAtrW5GtfO6MrBBTVZ9C4DcyhevE1Tbts5pxaLz_JMUQ8detxJ3L1bn8PFJ3ESn04eCaUQzr8c598k8cX9vuR5KAQVMaB1D-oC4p964Dn_1q60TvFgKONPExBci-9PcD_xZUSvBEvxfL_7_95MpF2nJyQUBGY6Y71A"
    
    
    static let headers: HTTPHeaders = [
    "Authorization": "Bearer \(bearerToken)"]
}
