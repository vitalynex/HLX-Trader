//
//  ViewController.swift
//  HLX Trader
//
//  Created by Nex Capital on 12/10/20.
//

import UIKit
import WebKit

class PositionSizeCalculatorView: UIViewController {
    
    
    @IBOutlet weak var positionSizeCalc: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let htmlpath = Bundle.main.path(forResource: "positionsizeweb", ofType: "html")
        let url = URL(fileURLWithPath: htmlpath!)
        let request = URLRequest(url:url)
        positionSizeCalc.load(request)
  
}
   
    
    
}
