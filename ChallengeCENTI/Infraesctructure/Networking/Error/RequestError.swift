//
//  RequestError.swift
//  ChallengeCENTI
//
//  Created by Yennifer Hurtado Arce on 2/07/23.
//

import Foundation

struct RequestError: Decodable, Error {
    let message: String
    static let `default`: RequestError = RequestError(message: "Ocurrio un error inesperado")
}
