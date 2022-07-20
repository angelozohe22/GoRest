//
//  PostRequest.swift
//  GoRest
//
//  Created by Luis Angel Inga Mendoza on 20/07/22.
//

import Foundation

struct PostRequest: DataRequest {
    
    typealias Response = [Post]
    
    var url: String {
        let baseUrl = Endpoinds.baseUrl
        let path    = Endpoinds.postUrl
        return baseUrl + path
    }
    
    func decode(_ data: Data) throws -> [Post] {
        let decoder = JSONDecoder()
        let response = try decoder.decode(PostResponse.self, from: data)
        return response.data ?? []
    }
    
    
}
