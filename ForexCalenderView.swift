//
//  ViewController.swift
//  HLX Trader
//
//  Created by Nex Capital on 12/10/20.
//

import UIKit
import WebKit

class ForexCalenderView: UIViewController {

    
    
    @IBOutlet var displayTheNews: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        newsDisplay()
        
    }
        
    func newsDisplay() {
    
        let htmlpath = Bundle.main.path(forResource: "calendar", ofType: "html")
        let url = URL(fileURLWithPath: htmlpath!)
        let request = URLRequest(url:url)
        displayTheNews.load(request)
    
}
}
