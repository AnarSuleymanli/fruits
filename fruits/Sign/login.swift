//
//  SignUpVC.swift
//  Floewers
//
//  Created by Anar Suleymanli on 21.09.22.
//

import UIKit
import AVKit
import Firebase

class login: UIViewController {
    
    var videoPlayer:AVPlayer?
    
    var videoPlayerLayer:AVPlayerLayer?
    

    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var signInButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpElements()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        
        
        // Set up video in the background
        setUpVideo()
    }
    
    
    
    func setUpElements() {
        Utilities.styleFilledButton(signUpButton)
        Utilities.styleHollowButton(signInButton)
        
    }
    
    func setUpVideo() {
        
        // Get the path to the resource in the bundle
        let bundlePath = Bundle.main.path(forResource: "loginvideo", ofType: "mp4")
        
        guard bundlePath != nil else {
            return
        }
        
        // Create the URL from it
        let url = URL(fileURLWithPath: bundlePath!)
        
        // Create the video player item
        let item = AVPlayerItem(url: url)
        
        // Create the player
        videoPlayer = AVPlayer(playerItem: item)
        
        // Create the layer
        videoPlayerLayer = AVPlayerLayer(player: videoPlayer!)
        
        // Adjust the size and frame
       // videoPlayerLayer?.frame = CGRect(x: -self.view.frame.size.width*1.5, y: 0, width: self.view.frame.size.width*4, height: self.view.frame.size.height)
        
        videoPlayerLayer?.frame = CGRect(x: -self.view.frame.size.width*1.5, y: 0, width: self.view.frame.size.width*4, height: self.view.frame.size.height)
        
        
        view.layer.insertSublayer(videoPlayerLayer!, at: 0)
        
        
        // Add it to the view and play it
        videoPlayer?.playImmediately(atRate: 0.3)
        
        
        

    
    
    }
    
    
    
    }
    

