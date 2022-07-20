//
//  Constants.swift
//  GoRest
//
//  Created by Luis Angel Inga Mendoza on 19/07/22.
//

import Foundation

struct Constants {
    
    static let appTitle: String = "Go REST"
    
    // MARK: Loading messages
    static let defaultLoadingMessage = "Cargando"
    
    // MARK: empty messages
    static let defaultEmptyTitleMessage = "Sin información"
    static let defaultEmptyDescriptionMessage = "No se encontró información con este nombre, intenta buscando otro."
    
    // MARK: error messages
    static let defaultErrorTitleMessage = "Ocurrió un error"
    static let defaultErrorDescriptionMessage = "No se pudo realizar la operación debido a un error."
    
}

struct Endpoinds {
    
    static let baseUrl = "https://gorest.co.in"
    static let postUrl = "/public/v1/posts"
    
}
