//
//  DetailViewController.swift
//  News
//
//  Created by wang yu on 2021/10/10.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {

    @IBOutlet weak var wkView: WKWebView!
    var urlString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "详情"
        
//        let configuration = WKWebViewConfiguration()
//        wkView = WKWebView(frame: CGRect(x: 0, y: 64, width: self.view.frame.width, height: self.view.frame.height - 64),
//                           configuration: configuration)
//        self.view.addSubview(wkView)
        
        let url = URL(string: urlString!)
        if let url = url {
            let request = URLRequest(url: url)
            wkView.load(request)
        }
    }
    
}
