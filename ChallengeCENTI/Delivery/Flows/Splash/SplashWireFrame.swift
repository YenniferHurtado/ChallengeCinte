//
//  SplashWireFrame.swift
//  ChallengeCENTI
//
//  Created by Yennifer Hurtado Arce on 2/07/23.
//  
//


import UIKit

protocol SplashWireFrameProtocol {
   static func makeSplashView() -> UIViewController
}

struct SplashWireFrame: SplashWireFrameProtocol {
    static func makeSplashView() -> UIViewController {
        
        let interactorDependencies = SplashInteractorDependencies()
        let interactor = SplashInteractor(dependencies: interactorDependencies)
        let presenter = SplashPresenter(interactor: interactor)
        let view = SplashViewController(presenter: presenter)
        
        return view
    }
}
