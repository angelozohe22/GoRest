//
//  HomeRouter.swift
//  GoRest
//
//  Created by Luis Angel Inga Mendoza on 19/07/22.
//

import UIKit

class HomeRouter {
    
    weak var currentViewController: UIViewController?
    
    init(withView view: UIViewController) {
        self.currentViewController = view
    }
    
}

extension HomeRouter: HomeRouterProtocol {
    
}
