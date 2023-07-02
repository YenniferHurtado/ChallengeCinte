//
//  HomeWireFrame.swift
//  ChallengeCENTI
//
//  Created by Yennifer Hurtado Arce on 2/07/23.
//  
//


import UIKit

protocol HomeWireFrameProtocol {
   static func makeHomeView() -> UINavigationController
}

struct HomeWireFrame: HomeWireFrameProtocol {
    static func makeHomeView() -> UINavigationController {
        
        let interactorDependencies = HomeInteractorDependencies()
        let interactor = HomeInteractor(dependencies: interactorDependencies)
        let presenter = HomePresenter(interactor: interactor)
        let view = HomeViewController(presenter: presenter)
        
        return UINavigationController(rootViewController: view)
    }
}
