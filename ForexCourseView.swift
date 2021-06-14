//
//  ViewController.swift
//  HLX Trader
//
//  Created by Nex Capital on 12/10/20.
//

import UIKit
import WebKit

class ForexCourseView: UIViewController {
    
    
    
    @IBOutlet weak var firstVid: WKWebView!
    @IBOutlet weak var secondVid: WKWebView!
    @IBOutlet weak var thirdVid: WKWebView!
    @IBOutlet weak var forthVid: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        firstVideo()
        secondVideo()
        thirdVideo()
        forthVideo()
        
}
    
    
    func firstVideo() {
        let htmlpath = Bundle.main.path(forResource: "video1", ofType: "html")
        let url = URL(fileURLWithPath: htmlpath!)
        let request = URLRequest(url:url)
        firstVid.load(request)
    }
    
    func secondVideo() {
        
        let htmlpath = Bundle.main.path(forResource: "video2", ofType: "html")
        let url = URL(fileURLWithPath: htmlpath!)
        let request = URLRequest(url:url)
        secondVid.load(request)
        
    }
    
    func thirdVideo() {
        
        let htmlpath = Bundle.main.path(forResource: "video3", ofType: "html")
        let url = URL(fileURLWithPath: htmlpath!)
        let request = URLRequest(url:url)
        thirdVid.load(request)
        
    }
    
    func forthVideo() {
        
        let htmlpath = Bundle.main.path(forResource: "video4", ofType: "html")
        let url = URL(fileURLWithPath: htmlpath!)
        let request = URLRequest(url:url)
        forthVid.load(request)
        
    }
    
    
   
}
