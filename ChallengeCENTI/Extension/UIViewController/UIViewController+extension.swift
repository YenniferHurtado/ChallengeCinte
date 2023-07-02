//
//  UIViewController+extension.swift
//  ChallengeCENTI
//
//  Created by Yennifer Hurtado Arce on 2/07/23.
//

import Foundation
import MBProgressHUD

extension UIViewController {
    
    func showHud() {
        MBProgressHUD.showAdded(to: view, animated: true)
    }

    func hideHud() {
        MBProgressHUD.hide(for: view, animated: true)
    }
}
