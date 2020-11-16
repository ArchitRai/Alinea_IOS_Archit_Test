//
//  AlertController.swift
//  IOS_Archit_Test
//
//  Created by Archit Rai Saxena on 16/11/20.
//  Copyright © 2020 Archit. All rights reserved.
//

import UIKit

class AlertController: NSObject {

    static let shared = AlertController()
    
    private override init() { }
    
    func showAlertWithMessage(alertMess: String, viewController: UIViewController) {
        let alert = UIAlertController(title: "Coming Soon!", message: "" + alertMess, preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))

        viewController.present(alert, animated: true)
    }
}
