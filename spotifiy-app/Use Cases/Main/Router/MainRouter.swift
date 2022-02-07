//
//  MainRouter.swift
//  spotifiy-app
//
//  Created by Rodrigo Torres on 06/02/2022.
//

import Foundation
import UIKit

class MainRouter {
    
    var viewController: UIViewController {
        return createViewController()
    }
    
    private var sourceView: UIViewController?
    
    func createViewController() -> UIViewController {
        let view = MainView(nibName: "MainView", bundle: nil)
        view.title = "Buscador"
        return view
    }
    
    func setSourceView(_ sourceView: UIViewController?) {
        guard let view = sourceView else {fatalError("Error")}
        self.sourceView = view
    }
    
}
