//
//  ViewController.swift
//  xylophone
//
//  Created by wang yu on 2021/10/25.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {

    var audioPlayer: AVAudioPlayer!
    let soundArray = ["note1","note2","note3","note4","note5","note6","note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        let soundURL = Bundle.main.url(forResource: soundArray[sender.tag - 1], withExtension: "wav")
        do {
            try audioPlayer = AVAudioPlayer(contentsOf: soundURL!)
        } catch let error {
            print(error.localizedDescription)
        }
        audioPlayer.play()
    }
    
}

