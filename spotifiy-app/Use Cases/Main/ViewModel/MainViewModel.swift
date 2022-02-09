//
//  MainViewModel.swift
//  spotifiy-app
//
//  Created by Rodrigo Torres on 06/02/2022.
//

import Foundation
import RxSwift

class MainViewModel {
    
    
    private weak var view: MainView?
    private var router: MainRouter?
    
    func bind(view: MainView, router: MainRouter) {
        self.view = view
        self.router = router
        self.router?.setSourceView(view)
    }
    
    func getArtist(params: [String : String]) -> Observable<[ArtistData]> {
        return APIManager.shared.getArtist(params: params)
        
    }
    
}
