//
//  HomeProtocols.swift
//  GoRest
//
//  Created by Luis Angel Inga Mendoza on 19/07/22.
//

import Foundation
import UIKit

protocol HomeViewProtocol: AnyObject {
    func showProgress(message: String)
    func hideProgress()
    func showEmpty(title: String, description: String, image: Images)
    func hideEmpty()
    func showErrorData(title: String, description: String, image: Images)
    func showData(dataList: [Post])
}

protocol HomePresenterProtocol: AnyObject {
    func loadInitialData()
    func fetchPosts(withName name: String)
    
}

protocol HomeInteractorInput: AnyObject {
    func loadInitialData()
    func fetchPosts(withName name: String)
}

protocol HomeInteractorOutput: AnyObject {
    func didReceiveData(postList: [Post])
    func didPostFound(postListFiltered: [Post])
    func didFailReceiveData()
    func foundPostListEmpty()
}


protocol HomeLocalProtocol: AnyObject {
    func getPostListStored() -> [Post]
    func storePostList(postList: [Post])
}

protocol HomeRouterProtocol: AnyObject {
    
}



