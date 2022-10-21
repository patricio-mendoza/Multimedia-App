//
//  VideoViewController.swift
//  Tarea
//
//  Created by Alumno on 21/10/22.
//

import Foundation
import UIKit
import AVKit
import AVFoundation

class VideoViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.async {
            let path = Bundle.main.path(forResource: "video1", ofType: "mov")
            let playerViewController = AVPlayerViewController()
            let videoURL = URL(fileURLWithPath: path!)
            let player = AVPlayer(url: videoURL)
            playerViewController.player = player
            
            self.present(playerViewController, animated: true, completion: nil)
        }
    }
}
