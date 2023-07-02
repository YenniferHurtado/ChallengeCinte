//
//  ReusableCell.swift
//  ChallengeCENTI
//
//  Created by Yennifer Hurtado Arce on 2/07/23.
//

import Foundation

protocol ReusableCell {
    static var reuseIdentifier: String { get }
    static var xibName: String { get }
}

extension ReusableCell {
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }

    static var xibName: String {
        return String(describing: self).components(separatedBy: ".").last ?? ""
    }
}
