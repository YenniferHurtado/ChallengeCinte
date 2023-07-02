//
//  HomePresenter.swift
//  ChallengeCENTI
//
//  Created by Yennifer Hurtado Arce on 2/07/23.
//  
//


import Foundation
import Combine

protocol HomePresenterProtocol {
    var result: [String] { get set }
}

final class HomePresenter: HomePresenterProtocol, ObservableObject {
    var result: [String] = []
    
    private let interactor: HomeInteractorProtocol
    
    init(interactor: HomeInteractorProtocol) {
        self.interactor = interactor
    }
}
