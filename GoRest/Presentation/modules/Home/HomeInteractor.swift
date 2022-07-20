//
//  HomeInteractor.swift
//  GoRest
//
//  Created by Luis Angel Inga Mendoza on 19/07/22.
//

import Foundation

class HomeInteractor {
    
    var output: HomeInteractorOutput?
    lazy var networkService: NetworkService = DefaultNetworkService()
    lazy var local: HomeLocalProtocol = HomeLocal()
    
}

extension HomeInteractor: HomeInteractorInput {
    func loadInitialData() {
        let request = PostRequest()
        networkService.request(request){ [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let postList):
                    
                    if postList.isEmpty {
                        self?.output?.foundPostListEmpty()
                    }else {
                        self?.local.storePostList(postList: postList)
                        self?.output?.didReceiveData(postList: postList)
                    }
                    
                case .failure(_):
                    self?.output?.didFailReceiveData()
                    
                }
            }
        }
    }
    
    func fetchPosts(withName name: String) {
        
        let postList = self.local.getPostListStored()
        
        if name.isEmpty {
            if postList.isEmpty {
                self.output?.foundPostListEmpty()
            }else {
                self.output?.didPostFound(postListFiltered: postList)
            }
            return
        }
        
        let postListFiltered = postList.filter({ $0.title.lowercased().contains(name.lowercased()) })
        if postListFiltered.isEmpty {
            self.output?.foundPostListEmpty()
        }else {
            self.output?.didPostFound(postListFiltered: postListFiltered)
        }
    }
    
    
    
}
