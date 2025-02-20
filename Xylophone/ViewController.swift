//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        // print("red C Button got pressed")
        // print(sender)
        // print(sender.backgroundColor ?? "")
        // get the title text
        // print(sender.titleLabel?.text ?? "")
        // print(sender.currentTitle ?? "")
    
//        var titleLable: UILabel = sender.titleLabel ??
//        var musicalNote: UILabel = title label
//        print(musicalNote)
        sender.alpha = 0.5
        playSound(soundName: sender.currentTitle!)
        // after a short delay set alpha back to 1.0
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            // Bring's sender's opacity back up to fully opaque
            sender.alpha = 1.0
          }
    }
    
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
    

}

