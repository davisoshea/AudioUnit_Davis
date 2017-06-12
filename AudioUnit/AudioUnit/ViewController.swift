//
//  ViewController.swift
//  AudioUnit
//
//  Created by Period 2 on 5/17/17.
//  Copyright © 2017 Period 2. All rights reserved.
//

import Cocoa
import CoreAudioKit
import AVFoundation

class ViewController: NSViewController {
    @IBOutlet weak var cutoffnob: NSSlider!
    
    
//    var audioFile : AVAudioFile?
    var player : AVAudioPlayer?
    var simpleEngine: SimplePlayEngine?
    var audioEngine : AVAudioEngine?
//    var generator : AVAudioUnitGenerator?
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        try AUAudioUnit?.init(componentDescription:)
        cutoffnob.maxValue = 1
        cutoffnob.minValue = 0
        simpleEngine?.setEffect()
        simpleEngine?.togglePlay()
    
    }

    @IBAction func play(_ sender: NSButton) {
        func playSound(file:String, ext:String) -> Void {
            let url = NSURL.init(fileURLWithPath:"/Users/h205p2/Desktop/AudioUnit_Davis/AudioUnit/drumLoop.caf")
            do {
                var sp = SinePlayer()
                try sp.ae.start()
                simpleEngine?.startPlaying()
                player = try AVAudioPlayer(contentsOf: url as URL)
                guard player != nil else { return }
                
            } catch let error {
                print(error.localizedDescription)
            }
        }
        
        playSound(file: "drumLoop", ext: "caf")

    }
    

}
