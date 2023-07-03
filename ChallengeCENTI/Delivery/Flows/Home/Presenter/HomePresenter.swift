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
    func listedPosts(completion: @escaping (Bool) -> Void)
    func clearValues()
    var isLoding: Bool { get set }
    var error: RequestError { get set }
    var elements: [DataModel] { get set }
    var filterElements: [DataModel] { get set }
}

final class HomePresenter: HomePresenterProtocol {

    var elements: [DataModel] = []
    var filterElements: [DataModel] = []
    var error: RequestError = RequestError.default
    var isLoding: Bool = false

    private let interactor: HomeInteractorProtocol

    init(interactor: HomeInteractorProtocol) {
        self.interactor = interactor
    }
    
    func listedPosts(completion: @escaping (Bool) -> Void) {
        
        interactor.listedPosts(query: []) { [weak self] result in
            guard let self = self else { return }
            self.lodingTogler()
            switch result {
            case .success(let success):
                self.elements.append(contentsOf: success.data)
                self.filterElements.append(contentsOf: success.data)
                completion(true)

            case .failure(let failure):
                self.error = failure
                completion(false)
            }
        }
    }
    
    private func lodingTogler() {
        self.isLoding = !self.isLoding
    }
    
    func clearValues() {
        self.elements = []
        self.filterElements = []
    }

}
