//
//  WebViewController.swift
//  Swift5IntroApp1
//
//  Created by 小西壮 on 2020/04/10.
//  Copyright © 2020 小西壮. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController,WKUIDelegate {

    var webView = WKWebView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        webView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height - 50)
        self.view.addSubview(webView)
        
        //ボタン
//        let button =  UIButton(type: .system)
//        button.addTarget(self, action: #selector(buttonAction(_ :)), for: .touchUpInside)
//        button.setTitle("戻る", for: .normal)
//        button.frame = CGRect(x: 0, y: self.view.frame.size.height - 50, width: self.view.frame.size.width, height: 50)
//        self.view.addSubview(button)
        
        let urlString = UserDefaults.standard.object(forKey: "url")
        let url = URL(string: urlString! as! String)
        let request = URLRequest(url: url!)
        webView.load(request)
        // Do any additional setup after loading the view.
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
