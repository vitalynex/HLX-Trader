//
//  ViewController.swift
//  HLX Trader
//
//  Created by Nex Capital on 12/10/20.
//

import UIKit

class LoginPage: UIViewController {
    
    
    @IBOutlet weak var loginLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginLabel.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        loginLabel.layer.cornerRadius = 20.0
        loginLabel.tintColor = UIColor.white
        
        self.hideKeyboardWhenTappedAround()
        
    }
    
    
    @IBAction func loginTapped(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://higherlevelfx.com")!)
    }
    

}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
