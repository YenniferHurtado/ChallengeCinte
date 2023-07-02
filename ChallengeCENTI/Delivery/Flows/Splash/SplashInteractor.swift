//
//  SplashInteractor.swift
//  ChallengeCENTI
//
//  Created by Yennifer Hurtado Arce on 2/07/23.
//  
//


import Foundation

protocol SplashInteractorProtocol {
    
}

final class SplashInteractor: SplashInteractorProtocol {
    private let dependencies: SplashInteractorDependenciesProtocol
    
    init(dependencies: SplashInteractorDependenciesProtocol) {
        self.dependencies = dependencies
    }
}
