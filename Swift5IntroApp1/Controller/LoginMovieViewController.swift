//
//  LoginMovieViewController.swift
//  Swift5IntroApp1
//
//  Created by 小西壮 on 2020/04/09.
//  Copyright © 2020 小西壮. All rights reserved.
//

import UIKit
import AVFoundation

class LoginMovieViewController: UIViewController {

    var player = AVPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let path = Bundle.main.path(forResource: "start", ofType: "mov")
        player = AVPlayer(url: URL(fileURLWithPath: path!))
        
        //AVplayer用のレイヤーを生成
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height)
        
        playerLayer.videoGravity = .resizeAspectFill
        playerLayer.repeatCount = 0
        playerLayer.zPosition = -1
        view.layer.insertSublayer(playerLayer, at: 0)
        
        //動画終わったらまた再生
        NotificationCenter.default.addObserver(forName: .AVPlayerItemDidPlayToEndTime, object: player.currentItem, queue: .main){(_) in
            self.player.seek(to: .zero)
            self.player.play()
            
        }
        
        self.player.play()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden=true
        
    }
    
    @IBAction func login(_ sender: Any) {
        
        player.pause()
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
