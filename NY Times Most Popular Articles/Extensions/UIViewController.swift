//
//  UIViewController.swift
//  NY Times Most Popular Articles
//
//  Created by Mohamed Samir on 12/5/20.
//  Copyright © 2020 Mohamed Samir. All rights reserved.
//


import UIKit
import SVProgressHUD

extension UIViewController {
    
    func showLoading(){
        SVProgressHUD.setDefaultMaskType(.clear)
        SVProgressHUD.show()
    }
    
    func hideLoading(){
        SVProgressHUD.dismiss()
    }
    func showAlert(title: String?, message: String?) {
    
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    
}
