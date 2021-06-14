//
//  ViewController.swift
//  HLX Trader
//
//  Created by Nex Capital on 12/10/20.
//

import UIKit

class AnalysisPage: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func PipSizeButtonPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "PiPSizeCalculator", sender: self)
        
    }
    
    
    @IBAction func BuyPowerButton(_ sender: UIButton) {
        
        performSegue(withIdentifier: "GoToPower", sender: self)
        
    }
    
    @IBAction func ForexCourseButton(_ sender: UIButton) {
        
        performSegue(withIdentifier: "GoToCourse", sender: self)
        
    }
    
    
    @IBAction func positionSizeCalcButton(_ sender: UIButton) {
        
        performSegue(withIdentifier: "GoToPositionSize", sender: self)
        
    }
    
    
    @IBAction func newsPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "GoToNews", sender: self)
        
    }
    
    
}


