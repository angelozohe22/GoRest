//
//  PostLocal.swift
//  GoRest
//
//  Created by Luis Angel Inga Mendoza on 20/07/22.
//



class HomeLocal: HomeLocalProtocol {
    
    var postListReceived: [Post] = []
    
    func getPostListStored() -> [Post] {
        return postListReceived
    }
    
    func storePostList(postList: [Post]){
        self.postListReceived = postList
    }
    
    
}
