//
//  HomeInteractor.swift
//  ChallengeCENTI
//
//  Created by Yennifer Hurtado Arce on 2/07/23.
//  
//


import Foundation
import Combine

protocol HomeInteractorProtocol {
    func listedPosts(query: [URLQueryItem], completion: @escaping (Result<HomeItemModel, RequestError>) -> Void)
}

final class HomeInteractor: HomeInteractorProtocol {

    private let dependencies: HomeInteractorDependenciesProtocol
    private var cancellable: AnyCancellable?
    
    init(dependencies: HomeInteractorDependenciesProtocol) {
        self.dependencies = dependencies
    }
    
    
    func listedPosts(query: [URLQueryItem], completion: @escaping (Result<HomeItemModel, RequestError>) -> Void) {
        cancellable = dependencies.listedPosts(query: query, .listedPosts)
            .sink(receiveCompletion: { result in
                switch result {
                case .finished : break
                case .failure(let error):
                    completion(.failure(error))
                }
            },receiveValue: {
                completion(.success($0))
        })
    }
}
