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
    
    let baseURL = "http://api.voicerss.org/?key=2c16136c2f954df8903f686abc991c66&hl=en-us&src=hello"
//    let baseURL = "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview128/v4/61/af/ee/61afee3c-7ebf-dcbd-9bfa-d049ca320d4f/mzaf_2352422808562653352.plus.aac.p.m4a"
//    let baseURL = "https://file-examples.com/wp-content/uploads/2017/11/file_example_MP3_700KB.mp3"
    var player: AVPlayer?
    
    func voiceGenerator(word: String) {
        let url = URL(string: baseURL + word)
//        let url = URL(string: baseURL)
        player = AVPlayer(url: url!)
        player?.play()
        print("playing \(baseURL + word)")
    }
}
