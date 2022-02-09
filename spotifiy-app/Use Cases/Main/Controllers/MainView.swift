//
//  MainView.swift
//  spotifiy-app
//
//  Created by Rodrigo Torres on 06/02/2022.
//

import UIKit
import RxSwift

class MainView: UIViewController {

    private var router = MainRouter()
    private var viewModel = MainViewModel()
    private var disposeBag = DisposeBag()
    var artist = [ArtistData]()
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var artistTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.bind(view: self, router: router)
        setupTableView()
        getArtist()

    }
    
    func getArtist() {
        let params = ["q" : "duki", "type" : "artist"]
        
        viewModel.getArtist(params: params)
            .subscribe(on: MainScheduler.instance)
            .observe(on: MainScheduler.instance)
            .subscribe { artist in
                self.artist = artist
                print(artist)
            } onError: { error in
                print(error.localizedDescription)
            }.disposed(by: disposeBag)
    }

}

extension MainView: UITableViewDelegate, UITableViewDataSource {
    
    private func setupTableView() {
        artistTableView.register(ArtistCell.nib(), forCellReuseIdentifier: ArtistCell.identifier)
        artistTableView.delegate = self
        artistTableView.dataSource = self
        artistTableView.isHidden = true
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = artistTableView.dequeueReusableCell(withIdentifier: ArtistCell.identifier, for: indexPath) as! ArtistCell
        return cell
    }
    
    
}
