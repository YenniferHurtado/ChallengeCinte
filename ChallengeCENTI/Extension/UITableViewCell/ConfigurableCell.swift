//
//  ConfigurableCell.swift
//  ChallengeCENTI
//
//  Created by Yennifer Hurtado Arce on 2/07/23.
//

import Foundation

protocol ConfigurableCell: ReusableCell {
    associatedtype DataType
    func configure(data: DataType)
}
