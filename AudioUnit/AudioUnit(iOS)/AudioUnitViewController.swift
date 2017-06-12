//
//  AudioUnitViewController.swift
//  AudioUnit(iOS)
//
//  Created by Period 2 on 5/24/17.
//  Copyright © 2017 Period 2. All rights reserved.
//

import CoreAudioKit

public class AudioUnitViewController: AUViewController, AUAudioUnitFactory {
    var audioUnit: AUAudioUnit?
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        if audioUnit == nil {
            return
        }
        
        // Get the parameter tree and add observers for any parameters that the UI needs to keep in sync with the AudioUnit
    }
    
    public func createAudioUnit(with componentDescription: AudioComponentDescription) throws -> AUAudioUnit {
        audioUnit = try MyAudioUnit(componentDescription: componentDescription, options: [])
        
        return audioUnit!
    }
    
}
