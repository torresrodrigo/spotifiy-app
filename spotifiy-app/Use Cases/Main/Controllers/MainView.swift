//
//  MainView.swift
//  spotifiy-app
//
//  Created by Rodrigo Torres on 06/02/2022.
//

import UIKit

class MainView: UIViewController {

    private var router = MainRouter()
    private var viewModel = MainViewModel()
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var artistTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.bind(view: self, router: router)
        setupTableView()

    }

}

extension MainView: UITableViewDelegate, UITableViewDataSource {
    
    private func setupTableView() {
        artistTableView.register(ArtistCell.nib(), forCellReuseIdentifier: ArtistCell.identifier)
        artistTableView.delegate = self
        artistTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = artistTableView.dequeueReusableCell(withIdentifier: ArtistCell.identifier, for: indexPath) as! ArtistCell
        return cell
    }
    
    
}
