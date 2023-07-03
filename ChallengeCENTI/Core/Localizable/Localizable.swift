//
//  Localizables.swift
//  ChallengeCENTI
//
//  Created by Yennifer Hurtado Arce on 2/07/23.
//

import Foundation

enum Localizable {
    
    enum HomeView: String, LocalizableString {
        var screen: String { "HomeView" }
        case title
        case searchBarPlacecholder
    }
    
    enum SplashView: String, LocalizableString {
        var screen: String { "SplashView" }
        case title
    }
    
}
