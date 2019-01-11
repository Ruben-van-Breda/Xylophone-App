//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var audioPlayer:AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(soundFileName: "note\(sender.tag)")
        
       
        
    }
    
    func playSound(soundFileName sound: String){
        
        let sound = Bundle.main.url(forResource: sound, withExtension: "wav")
        do {
            try audioPlayer =  AVAudioPlayer(contentsOf: sound!)
            guard let audioPlayer = audioPlayer else {return}
            audioPlayer.prepareToPlay()
            audioPlayer.play()
            
        } catch {
            print(error)
        }
        
    }
    
  

}

