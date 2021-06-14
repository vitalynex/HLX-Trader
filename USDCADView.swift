//
//  ViewController.swift
//  HLX Trader
//
//  Created by Nex Capital on 12/10/20.
//

import UIKit
import WebKit

class USDCADView: UIViewController {

    
    @IBOutlet weak var Slider1: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let htmlpath = Bundle.main.path(forResource: "USDCAD-pow", ofType: "html")
        let url = URL(fileURLWithPath: htmlpath!)
        let request = URLRequest(url:url)
        Slider1.load(request)
        
        
    }


}
