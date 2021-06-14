//
//  ViewController.swift
//  HLX Trader
//
//  Created by Nex Capital on 12/10/20.
//

import UIKit
import WebKit

class BuySellPowerView: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var currencyField: UITextField!
    @IBOutlet weak var errorText: UILabel!
    @IBOutlet weak var buttonLabel: UIButton!
    
    let currencies = ["USDCAD", "GBPJPY", "GBPCAD", "AUDCAD", "NZDCAD", "GBPUSD", "EURUSD", "USDJPY", "Honey"]
    
    var pickerView = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonLabel.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        buttonLabel.layer.cornerRadius = 20.0
        buttonLabel.tintColor = UIColor.white
        
        errorText.text = ""
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
        currencyField.inputView = pickerView
        currencyField.textAlignment = .center
        currencyField.placeholder = "Select Currency Pair"
        
        currencyField.inputView = pickerView
        
    }
    
   
    
    
    @IBAction func powerButton(_ sender: UIButton) {
        
        
        switch currencyField.text {
        
        case currencies[0]:
            performSegue(withIdentifier: "SliderUSDCAD", sender: self)
            errorText.text = ""
            
        case currencies[2]:
            performSegue(withIdentifier: "SliderGBPCAD", sender: self)
            errorText.text = ""
        default:
            errorText.text = "Please Select a Currency Pair First!"
        }
        
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return currencies.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return currencies[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        currencyField.text = currencies[row]
        currencyField.resignFirstResponder()
    }
    
}


