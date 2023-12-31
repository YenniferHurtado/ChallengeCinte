//
//  SplashViewController.swift
//  ChallengeCENTI
//
//  Created by Yennifer Hurtado Arce on 2/07/23.
//  
//


import UIKit

class SplashViewController: BaseViewController {
    
    private var presenter: SplashPresenter
    
    init(presenter: SplashPresenter) {
        self.presenter = presenter
        super.init(nibName: String(describing: type(of: self)), bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showHud()
    }
    
    // Simulate show home
    override func viewDidAppear(_ animated: Bool) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            let controller = HomeWireFrame.makeHomeView()
            controller.modalPresentationStyle = .fullScreen
            self.present(controller, animated: false)        }
    }
}
