//
//  PostResponse.swift
//  GoRest
//
//  Created by Luis Angel Inga Mendoza on 19/07/22.
//

import Foundation

struct PostResponse: Decodable {
    let data: [Post]?
}

struct Post: Decodable {
    let title : String
    let body  : String
}


