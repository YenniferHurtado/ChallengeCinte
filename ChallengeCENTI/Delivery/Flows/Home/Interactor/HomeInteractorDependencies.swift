//
//  HomeInteractorDependencies.swift
//  ChallengeCENTI
//
//  Created by Yennifer Hurtado Arce on 2/07/23.
//  
//


import Foundation
import Combine

protocol HomeInteractorDependenciesProtocol {
    func listedPosts(query: [URLQueryItem],_ feedKind: Feed) -> AnyPublisher<HomeItemModel, RequestError>
}

class HomeInteractorDependencies: RequestProtocol, HomeInteractorDependenciesProtocol {
    
    var session: URLSession
    
    init(configuration: URLSessionConfiguration) {
        self.session = URLSession(configuration: configuration)
    }
    
    convenience init() {
        self.init(configuration: .default)
    }

    func listedPosts(query: [URLQueryItem],_ feedKind: Feed) -> AnyPublisher<HomeItemModel, RequestError> {
        execute(feedKind.request(query: query), decodingType: HomeItemModel.self)
    }
}

