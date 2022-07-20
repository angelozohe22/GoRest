//
//  HomeConfigurator.swift
//  GoRest
//
//  Created by Luis Angel Inga Mendoza on 19/07/22.
//

import Foundation
import UIKit

class HomeConfigurator {
    
    class func make() -> UIViewController {
        let view = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomeVC") as! HomeViewController
        
        let presenter   = HomePresenter()
        let router      = HomeRouter()
        let interactor  = HomeInteractor()
        
        presenter.view       = view
        presenter.router     = router
        presenter.interactor = interactor
        
        view.presenter       = presenter
        
        router.presenter     = presenter
        
        interactor.output    = presenter
        
        return view
    }
    
}

