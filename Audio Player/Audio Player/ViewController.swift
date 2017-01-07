//
//  ViewController.swift
//  Audio Player
//
//  Created by Nick Natali on 12/30/16.
//  Copyright © 2016 Make It Appen. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    
    var player = AVAudioPlayer()
    
    @IBAction func play(_ sender: Any) {
        
          player.play()
    }
    
    @IBAction func pause(_ sender: Any) {
        
        player.pause()
    }

    @IBAction func sliderMoved(_ sender: Any) {
        
        player.volume = slider.value
    }
    
    
    @IBOutlet var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let audioPath = Bundle.main.path(forResource: "Broccolli", ofType: "mp3")
        
        
        do {
            
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            
          
            
            
        } catch {
            //Process any errors 
            
            
            
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

