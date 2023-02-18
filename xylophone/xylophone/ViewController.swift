//
//  ViewController.swift
//  xylophone
//
//  Created by mohamdan on 17/02/2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player : AVPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func keyPressed(_ sender: UIButton) {
        
        sender.alpha = 0.5
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1
        }
        if let sound = sender.currentTitle{
            playSound(soundName: sound)
        }
        
    }
    
    func playSound(soundName:String){
        if let url = Bundle.main.url(forResource: soundName, withExtension: "wav"){
            player = AVPlayer(url: url)
            player.play()
        }
    }
}

