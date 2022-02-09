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
    static let SEARCH_ENDPOINT = base_url+"search?"
    
    
    static let bearerToken = "BQDoMPA31bHqpF38SPd24cLXeLEAMrkRxdsdAEj2aYPoX-JTjQUiJBAL3M8LoscmJC0hEJsWZDYeK5SI8geEzn0u_DjG9wu1bt_SGN3q9lFI232zRyDKcrPKTGj81SuZUlry5taOjyIkzpOCH2MQAX8E4nAtxe7BUu0"
    
    
    static let headers: HTTPHeaders = [
    "Authorization": "Bearer \(bearerToken)"]
}
