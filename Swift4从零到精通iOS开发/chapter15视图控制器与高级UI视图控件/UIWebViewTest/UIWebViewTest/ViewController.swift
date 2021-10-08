//
//  ViewController.swift
//  UIWebViewTest
//
//  Created by wang yu on 2021/10/7.
//

import UIKit

class ViewController: UIViewController {

    var webView: UIWebView!
    var toolView: UIView!
    var buttonGoBack: UIButton!
    var buttonGoForward: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = UIWebView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        webView.delegate = self
        let url = URL(string: "http://www.baidu.com")
        if let url = url {
            let request = URLRequest(url: url)
            webView.loadRequest(request)
        }
        self.view.addSubview(webView)
        
        toolView = UIView()
        toolView.backgroundColor = UIColor.purple
        self.view.addSubview(toolView)
        
        buttonGoBack = UIButton(frame: CGRect(x: 30, y: 0, width: 70, height: 30))
        buttonGoBack.setTitle("后退", for: UIControl.State.normal)
        buttonGoBack.setTitleColor(UIColor.lightGray, for: UIControl.State.disabled)
        buttonGoBack.addTarget(self, action: #selector(goBack), for: UIControl.Event.touchUpInside)
        toolView.addSubview(buttonGoBack)
        
        buttonGoForward = UIButton(frame: CGRect(x: 130, y: 0, width: 70, height: 30))
        buttonGoForward.setTitle("前进", for: UIControl.State.normal)
        buttonGoForward.setTitleColor(UIColor.lightGray, for: UIControl.State.disabled)
        buttonGoForward.addTarget(self, action: #selector(goForward), for: UIControl.Event.touchUpInside)
        toolView.addSubview(buttonGoForward)
    }

    override func viewDidLayoutSubviews() {
        webView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height - 30)
        toolView.frame = CGRect(x: 0, y: self.view.frame.height - 30, width: self.view.frame.width, height: 30)
    }
    
    @objc private func goBack() {
        webView.goBack()
        buttonGoBack.isEnabled = false
        buttonGoForward.isEnabled = true
    }
    
    @objc private func goForward() {
        webView.goForward()
    }
}

extension ViewController : UIWebViewDelegate {
    func webViewDidFinishLoad(_ webView: UIWebView) {
        print("\(#function),can go back:\(webView.canGoBack),can go forward:\(webView.canGoForward)")
        buttonGoBack.isEnabled = webView.canGoBack
        buttonGoForward.isEnabled = webView.canGoForward
    }
}
