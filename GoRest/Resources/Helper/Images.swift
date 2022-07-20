//
//  Images.swift
//  GoRest
//
//  Created by Luis Angel Inga Mendoza on 20/07/22.
//

import UIKit

enum Images {
    
    case errorData
    case emptyData
    
    var image: UIImage? {
        return value
    }
    
    private var value: UIImage? {
        switch self {
        case .errorData: return UIImage(named: "error_data")
        case .emptyData: return UIImage(named: "empty_data")
        }
    }
    
    
}


