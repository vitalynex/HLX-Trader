//
//  ViewController.swift
//  HLX Trader
//
//  Created by Nex Capital on 12/10/20.
//

import UIKit
import WebKit

class ChartPage: UIViewController {
    
    
    @IBOutlet weak var htmlload: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let htmlpath = Bundle.main.path(forResource: "index2", ofType: "html")
        let url = URL(fileURLWithPath: htmlpath!)
        let request = URLRequest(url:url)
        htmlload.load(request)
        
    }


}


