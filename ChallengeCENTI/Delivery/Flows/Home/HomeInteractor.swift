//
//  HomeInteractor.swift
//  ChallengeCENTI
//
//  Created by Yennifer Hurtado Arce on 2/07/23.
//  
//


import Foundation

protocol HomeInteractorProtocol {
    
}

final class HomeInteractor: HomeInteractorProtocol {
    private let dependencies: HomeInteractorDependenciesProtocol
    
    init(dependencies: HomeInteractorDependenciesProtocol) {
        self.dependencies = dependencies
    }
}
