//
//  PlaySound.swift
//  FirstApp
//
//  Created by wang yu on 2021/10/12.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("不能播放指定的音效文件。")
        }
    }
}
