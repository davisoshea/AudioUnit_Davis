//
//  ViewController.swift
//  AudioUnit(Ios)
//
//  Created by Period 2 on 5/24/17.
//  Copyright © 2017 Period 2. All rights reserved.
//

import UIKit
import CoreAudioKit
import AVFoundation

class ViewController: UIViewController {
    

//    var audioFile : AVAudioFile?
    
    var playerNode : AVAudioPlayer?
//    var audioEngine : AVAudioEngine?
//    var generator : AVAudioUnitGenerator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let url = NSURL.init(fileURLWithPath:"/Users/h205p2/Desktop/AudioUnit_Davis/AudioUnit/jdilla")
        
        do {
//            audioEngine = try AVAudioEngine.init()
//            audioFile = try AVAudioFile.init(forReading: url as URL)
            //            try playerNode?.scheduleFile(audioFile!, at: nil, completionHandler: nil)
            //            audioEngine?.attach(playerNode!)
            playerNode? = try AVAudioPlayer.init(contentsOf: url as URL)
        } catch let error {
            print("audioPlayer error \(error.localizedDescription)")
        }
    }
    
    @IBAction func plaayyyyy(_ sender: Any) {
//     
            playerNode?.play()

    }
    }
    


@IBAction func play(_ sender: NSButton) {
}
@IBAction func play(_ sender: NSButton) {
    @IBOutlet weak var play: NSButton!
}
