//
//  ViewController.swift
//  Music
//
//  Created by 小野　櫻 on 2018/03/20.
//  Copyright © 2018年 小野　櫻. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
   
   var audioPlayer : AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   @IBAction func natsuPlayButton(){
     setupAudioPlayer(soundName: "natsu", type: "mp3")
      audioPlayer.play( )
      
   }
   
   @IBAction func amePlayButton(){
      setupAudioPlayer(soundName: "ame", type: "mp3")
      audioPlayer.play()
      
   }
   @IBAction func akiPlayButton(){
    setupAudioPlayer(soundName: "aki", type: "mp3")
      audioPlayer.play()
      
   }
   func setupAudioPlayer (soundName : String, type : String) {
      
      let soundFilePath = Bundle.main.path(forResource: soundName, ofType: type)!
      let fileURL = URL(fileURLWithPath: soundFilePath)
      
      do  {
         
         audioPlayer = try AVAudioPlayer(contentsOf: fileURL)
      } catch{
         
         print("音楽ファイルが読み込めませんでした")
         
         
      }
      
}

}
