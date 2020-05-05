//
//  VoiceObserver.swift
//  P2B
//
//  Created by Кристина Перегудова on 05.05.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import Foundation
import AVFoundation

class VoiceObserver {
    
    let baseURL = "http://api.voicerss.org/?key=2c16136c2f954df8903f686abc991c66&hl=en-us&src="
    var player: AVPlayer!
    
    func voiceGenerator(word: String) {
        let url = URL(string: baseURL + word)
        player = AVPlayer(url: url!)
//        player.volume = 5.0
        player.play()
        print("playing...")
    }
}

