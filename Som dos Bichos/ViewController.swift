//
//  ViewController.swift
//  Som dos Bichos
//
//  Created by Matheus Rodrigues Araujo on 16/12/19.
//  Copyright © 2019 Curso IOS. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player = AVAudioPlayer()
    
    @IBAction func buttonDog(_ sender: Any) {
        self.playSound(soundName: "cao")
    }
    @IBAction func buttonCat(_ sender: Any) {
        self.playSound(soundName: "gato")
    }
    @IBAction func buttonLion(_ sender: Any) {
        self.playSound(soundName: "leao")
    }
    @IBAction func buttonMonkey(_ sender: Any) {
        self.playSound(soundName: "macaco")
    }
    @IBAction func buttonSheep(_ sender: Any) {
        self.playSound(soundName: "ovelha")
    }
    @IBAction func buttonCow(_ sender: Any) {
        self.playSound(soundName: "vaca")
    }
    
    func playSound(soundName: String) {
        
        if let path = Bundle.main.path(forResource: soundName, ofType: "mp3") {
            let url = URL(fileURLWithPath: path )
            do {
                player = try AVAudioPlayer(contentsOf: url)
                player.prepareToPlay()
                player.play()
            } catch {
                print("Erro ao executar audio")
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

