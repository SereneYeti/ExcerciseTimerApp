//
//  Sounds.swift
//  ExcerciseTimerApp
//
//  Created by IACD-011 on 2022/04/17.
//

import AVFoundation

 class Sounds {

   static var audioPlayer:AVAudioPlayer?

     static func playSounds(soundfile: String, type: String) {

         if let path = Bundle.main.path(forResource: soundfile, ofType: type){

             do{

                 audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                 audioPlayer?.prepareToPlay()
                 audioPlayer?.play()

             }catch {
                 print("Error")
             }
         }
      }
 }
