//
//  ViewController.swift
//  HLX Trader
//
//  Created by Nex Capital on 12/10/20.
//

import UIKit
import UserNotifications

class TradeAlertsPage: UIViewController {
    
    // PUSH NOTIFICATION LOGIC
    
    func NotificationPushing() {
        let center = UNUserNotificationCenter.current()
        
        center.requestAuthorization(options: [.alert, .sound])
            { (granted, error) in
        }

        let content = UNMutableNotificationContent()
        content.title = "HLX Trade Alert!"
        content.body = "Possible Buy on USDJPY!"
        
        let date = Date().addingTimeInterval(5)
        
        let dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        
        let uuidString = UUID().uuidString
        
        let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
        
        center.add(request) {
            (error) in
        }
    }
    
    
    
    
    
    @IBOutlet weak var Notify: UISwitch!
    @IBOutlet weak var TestSwitch: UISwitch!
    @IBOutlet weak var AccessInfo: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Notify.isOn = false
        Notify.isEnabled = false
        TestSwitch.isOn = false
        AccessInfo.text = "ACCESS DENIED! Please Sign-in!"
        
    }

    
    @IBAction func NotifyButton(_ sender: UISwitch) {
        
        if sender.isOn {
            NotificationPushing()
        }
        
    }
    
    @IBAction func TestButton(_ sender: UISwitch) {
    
        if sender.isOn {
            Notify.isEnabled = true
            AccessInfo.textColor = UIColor.green
            AccessInfo.text = "ACCESS GRANTED!"
            
            
        } else if sender.isOn == false {
            AccessInfo.text = "ACCESS DENIED! Please Sign-in!"
            AccessInfo.textColor = UIColor.red
            Notify.isEnabled = false
            Notify.isOn = false
        }

    }
    
}
