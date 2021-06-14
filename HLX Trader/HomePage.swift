//
//  ViewController.swift
//  HLX Trader
//
//  Created by Nex Capital on 12/10/20.
//

import UIKit

class HomePageController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
}
    
    @IBAction func facebookPressed(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://facebook.com/higherlevelfx")!)
    }
    
    @IBAction func igPressed(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://www.instagram.com/higherlevelfx/")!)
    }
    
    @IBAction func telegramPressed(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://t.me/joinchat/NxL-MRqpx2m82bg-iH4VvQ")!)
    }
    
    
    @IBAction func GoToHLX(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://higherlevelfx.com")!)
    }
    
    
}
