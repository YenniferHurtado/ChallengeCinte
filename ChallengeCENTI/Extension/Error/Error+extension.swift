//
//  Error+extension.swift
//  ChallengeCENTI
//
//  Created by Yennifer Hurtado Arce on 2/07/23.
//

import Foundation

extension Error {
    var errorCode:Int? {
        return (self as NSError).code
    }
}
