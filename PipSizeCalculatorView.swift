//
//  ViewController.swift
//  HLX Trader
//
//  Created by Nex Capital on 12/10/20.
//

import UIKit
import WebKit



class PipSizeCalculatorView: UIViewController {
    
    
    @IBOutlet weak var pipSizeCalcWeb: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let htmlpath = Bundle.main.path(forResource: "pipsizecalc", ofType: "html")
        let url = URL(fileURLWithPath: htmlpath!)
        let request = URLRequest(url:url)
        pipSizeCalcWeb.load(request)
        
        

    
        }
    
    
        
        
        
        
    }
    
    




