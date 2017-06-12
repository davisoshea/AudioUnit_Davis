//
//  SINEWAVE.swift
//  AudioUnit
//
//  Created by Period 2 on 6/6/17.
//  Copyright © 2017 Period 2. All rights reserved.
//

import Foundation
import AVFoundation

class SinePlayer{
    // store persistent objects
    var ae:AVAudioEngine
    var player:AVAudioPlayerNode
    var mixer:AVAudioMixerNode
    var buffer:AVAudioPCMBuffer
    
    init(){
        // initialize objects
        ae = AVAudioEngine()
        player = AVAudioPlayerNode()
        mixer = ae.mainMixerNode;
        buffer = AVAudioPCMBuffer(pcmFormat: player.outputFormat(forBus: 0), frameCapacity: 100)
        buffer.frameLength = 100
        
        // generate sine wave
        var sr:Float = Float(mixer.outputFormat(forBus: 0).sampleRate)
        var n_channels = mixer.outputFormat(forBus: 0).channelCount
        for i in stride(from: 0, to:(buffer.frameLength), by:Int(n_channels)){
            var val = sinf(441.0*Float(i)*2*Float(M_PI)/sr)
            
            buffer.floatChannelData?.pointee[Int(i)] = val * 0.5
        }
        
        // setup audio engine
        ae.attach(player)
        ae.connect(player, to: mixer, format: player.outputFormat(forBus: 0))
        
        // play player and buffer
        player.play()
//        player.scheduleBuffer(buffer, at: nil, options: .loops, completionHandler: nil)
        
    }
    
}

