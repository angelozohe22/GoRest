//
//  HomePresenter.swift
//  GoRest
//
//  Created by Luis Angel Inga Mendoza on 19/07/22.
//

import Foundation

class HomePresenter {
    
    weak var view   : HomeViewProtocol?
    var interactor  : HomeInteractorInput?
    var router      : HomeRouterProtocol?
    
}

extension HomePresenter: HomePresenterProtocol {
    func loadInitialData() {
        self.view?.showProgress(message: Constants.defaultLoadingMessage)
        self.interactor?.loadInitialData()
    }
    
    func fetchPosts(withName name: String) {
        self.view?.showProgress(message: Constants.defaultLoadingMessage)
        self.interactor?.fetchPosts(withName: name)
    }
}

extension HomePresenter: HomeInteractorOutput {
    func didReceiveData(postList: [Post]) {
        self.view?.hideProgress()
        self.view?.showData(dataList: postList)
    }
    
    func didPostFound(postListFiltered: [Post]) {
        self.view?.hideProgress()
        self.view?.showData(dataList: postListFiltered)
    }
    
    func didFailReceiveData() {
        self.view?.hideProgress()
        self.view?.showErrorData(title: Constants.defaultErrorTitleMessage, description: Constants.defaultErrorDescriptionMessage, image: .errorData)
    }
    
    func foundPostListEmpty() {
        self.view?.hideProgress()
        self.view?.showEmpty(title: Constants.defaultEmptyTitleMessage, description: Constants.defaultEmptyDescriptionMessage, image: .emptyData)
    }
    
}
