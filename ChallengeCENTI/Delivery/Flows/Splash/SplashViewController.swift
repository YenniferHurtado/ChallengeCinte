//
//  SplashViewController.swift
//  ChallengeCENTI
//
//  Created by Yennifer Hurtado Arce on 2/07/23.
//  
//


import UIKit

class SplashViewController: UIViewController {
    
    private var presenter: SplashPresenter
    
    init(presenter: SplashPresenter) {
        self.presenter = presenter
        super.init(nibName: String(describing: type(of: self)), bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
