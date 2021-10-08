//
//  ViewController.swift
//  WebKitTest
//
//  Created by wang yu on 2021/10/7.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    var wkView: WKWebView!
    var progressView:UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let configuration = WKWebViewConfiguration()
        // 配置进程池
        let processPool = WKProcessPool()
        configuration.processPool = processPool
        // 偏好配置
        let preference = WKPreferences()
        preference.minimumFontSize = 0
        preference.javaScriptEnabled = true
        preference.javaScriptCanOpenWindowsAutomatically = false
        configuration.preferences = preference
        
        let userContentController = WKUserContentController()
        userContentController.add(self, name: "nativeFunc")
        let javaScriptString = "function userFunc(){window.webkit.messageHandlers.nativeFunc.postMessage({\"班级\":\"珲少学堂\"})};userFunc()"
        let userScript = WKUserScript(source: javaScriptString, injectionTime: WKUserScriptInjectionTime.atDocumentStart, forMainFrameOnly: false)
        userContentController.addUserScript(userScript)
        configuration.userContentController = userContentController
        
        wkView = WKWebView(frame: CGRect(x: 0, y: 10, width: self.view.frame.width, height: self.view.frame.height - 10),
                           configuration: configuration)
        wkView.uiDelegate = self
        self.view.addSubview(wkView)
        
        let url = URL(string: "http://www.baidu.com")
        if let url = url {
            let request = URLRequest(url: url)
            wkView.load(request)
        }
        
        progressView = UIProgressView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 10))
        progressView.progressTintColor = UIColor.green
        progressView.progress = 0
        self.view.addSubview(progressView!)
        //对WKWebView实例的estimatedProgress属性进行监听
        wkView.addObserver(self, forKeyPath: "estimatedProgress", options:NSKeyValueObservingOptions.new, context: nil)
    }
    
    override func observeValue(forKeyPath keyPath: String?,
                               of object: Any?,
                               change: [NSKeyValueChangeKey : Any]?,
                               context: UnsafeMutableRawPointer?) {
        if keyPath == "estimatedProgress" {
            progressView?.progress = Float(wkView.estimatedProgress)
        }
    }
}

extension ViewController: WKScriptMessageHandler {
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        print("Message", message.body, message.name)
    }
}

extension ViewController: WKUIDelegate {
    func webView(_ webView: WKWebView, runJavaScriptAlertPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo, completionHandler: @escaping () -> Void) {
        print(message)
        completionHandler()
    }
}
