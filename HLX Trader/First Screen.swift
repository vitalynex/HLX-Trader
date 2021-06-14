//
//  ViewController.swift
//  HLX Trader
//
//  Created by Nex Capital on 12/10/20.
//

import UIKit
import AVFoundation

class FirstScreenView: UIViewController {
    var player: AVPlayer?
    
    
    @IBOutlet weak var riskwarning: UILabel!
    @IBOutlet weak var riskswitch: UISwitch!
    @IBOutlet weak var pleaseAccept: UILabel!
    @IBOutlet weak var `continue`: UIButton!
    @IBOutlet weak var riskReader: UIButton!
    
    @IBOutlet weak var hlxDelayLogo: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        `continue`.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        `continue`.layer.cornerRadius = 20.0
        `continue`.tintColor = UIColor.white
        
        riskReader.isHidden = true
        pleaseAccept.isHidden = true
        riskwarning.isHidden = true
        riskswitch.isHidden = true
        `continue`.isHidden = true
        hlxDelayLogo.isHidden = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 4.0) {
            self.riskReader.alpha = 0
            self.riskReader.isHidden = false
            self.pleaseAccept.alpha = 0
            self.pleaseAccept.text = ""
            self.pleaseAccept.isHidden = false
            self.riskwarning.alpha = 0
            self.riskwarning.isHidden = false
            self.riskwarning.text = "I Read and Understand the following:"
            self.riskswitch.alpha = 0
            self.riskswitch.isOn = false
            self.riskswitch.isHidden = false
            self.`continue`.alpha = 0
            self.`continue`.isHidden = false
            self.hlxDelayLogo.alpha = 0
            self.hlxDelayLogo.isHidden = false
            
            UIView.animate(withDuration: 1) {
                self.riskReader.alpha = 1
                self.pleaseAccept.alpha = 1
                self.riskwarning.alpha = 1
                self.riskswitch.alpha = 1
                self.hlxDelayLogo.alpha = 1
                self.`continue`.alpha = 1
               
            
            }
        }
        
        playBackgroundVideo()
        
}
    
    
    func playBackgroundVideo() {
        
        let path = Bundle.main.path(forResource: "BackGroundVid", ofType: "mp4")
        player = AVPlayer(url: URL(fileURLWithPath: path!))
        player!.actionAtItemEnd = AVPlayer.ActionAtItemEnd.none
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = self.view.frame
        playerLayer.videoGravity = AVLayerVideoGravity.resizeAspectFill
        self.view.layer.insertSublayer(playerLayer, at:0)
        NotificationCenter.default.addObserver(self, selector: #selector(playerItemDidReachEnd), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: player!.currentItem)
        player!.seek(to: CMTime.zero)
        player!.play()
        self.player?.isMuted = true
        
    }
    
    @objc func playerItemDidReachEnd() {
        return
    }
    
    
    @IBAction func continueButton(_ sender: UIButton) {
        
        if riskswitch.isOn {
            performSegue(withIdentifier: "GoNow", sender: self)
        } else if riskswitch.isOn != true {
            pleaseAccept.text = "You must accept the risk warning to proceed!"
        }
        
    }
    
    @IBAction func switchy(_ sender: UISwitch) {
        
        if riskswitch.isOn {
            pleaseAccept.text = ""
        } else if riskswitch.isOn != true {
            pleaseAccept.text = "You must accept the risk warning to proceed!"
        }
        
    }
    
    @IBAction func riskReadNow(_ sender: UIButton) {
        performSegue(withIdentifier: "GoToRisk", sender: self)
    }
    
    
        
}
    
    

    

    

