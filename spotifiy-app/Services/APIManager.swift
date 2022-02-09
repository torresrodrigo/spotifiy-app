//
//  APIManager.swift
//  spotifiy-app
//
//  Created by Rodrigo Torres on 08/02/2022.
//

import Foundation
import RxSwift
import Alamofire

class APIManager {
    
    static let shared = APIManager()
    
    func getArtist(params: [String: String])  -> Observable<[ArtistData]> {
        let url = Constants.SEARCH_ENDPOINT
        let headers = Constants.headers
        
        return Observable.create { observer in
            let requestReference = AF.request(url, method: .get, parameters: params, headers: headers).responseDecodable(of: DataResponse.self) { response in
                switch response.result {
                case .success(let data):
                    observer.onNext(data.artists.items)
                case .failure(let error):
                    observer.onError(error.underlyingError!)
                }
            }
            return Disposables.create {
                requestReference.cancel()
            }
        }
    }
}
