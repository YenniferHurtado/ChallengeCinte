//
//  Feed.swift
//  ChallengeCENTI
//
//  Created by Yennifer Hurtado Arce on 2/07/23.
//

import Foundation

enum Feed {
    case listedPosts
}

extension Feed: Endpoint {
    
    var httpMethod: RequestMethod {
        switch self {
        case .listedPosts:
            return .GET
        }
    }
    
    var path: String {
        switch self {
        case .listedPosts:
            return "/public/v1/posts"
        }
    }
}
