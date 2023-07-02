//
//  Alert.swift
//  ChallengeCENTI
//
//  Created by Yennifer Hurtado Arce on 2/07/23.
//

import Foundation
import UIKit

struct Alert {
    
    private static func showBasicAlert(on vc: UIViewController,
                                       with title: String,
                                       message: String,
                                       handler: ((UIAlertAction) -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Title", style: .default, handler: handler))
        DispatchQueue.main.async { vc.present(alert, animated: true) }
    }
    
    static func showErrorAlert(on vc: UIViewController,
                               message: String,
                               handler: ((UIAlertAction) -> Void)? = nil) {
        showBasicAlert(on: vc, with: "titulo",
                       message: message, handler: handler)
    }
    
    static func showEmptyAlert(on vc: UIViewController, handler: ((UIAlertAction) -> Void)? = nil) {
        showBasicAlert(on: vc, with: "Titulo",
                       message: "Titulo1", handler: handler)
    }

}
