//
//  ViewController.swift
//  GifAnimation
//
//  Created by wang yu on 2021/10/9.
//

import UIKit
import ImageIO

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let imageView = UIImageView(frame: CGRect(x: 100, y: 100, width: 200, height: 200))
        self.view.addSubview(imageView)
        self.playGIFOnImageView(name: "animation", imageView: imageView)
        
        let webView = UIWebView(frame: CGRect(x: 0, y: 250, width: 200, height: 200))
        self.view.addSubview(webView)
        self.playGIFOnWebView(name: "animation", webView: webView)
    }

    func playGIFOnWebView(name: String, webView: UIWebView) {
        let path = Bundle.main.path(forResource: name, ofType: "gif")
        let url = URL.init(fileURLWithPath: path!)
        let imageData = try! Data(contentsOf: url)
        webView.scrollView.bounces = false
        webView.backgroundColor = UIColor.clear
        webView.scalesPageToFit = true
        webView.load(imageData, mimeType: "image/gif", textEncodingName: "", baseURL: URL(string: Bundle.main.bundlePath)!)
    }
    
    func playGIFOnImageView(name: String, imageView: UIImageView) {
        let path = Bundle.main.path(forResource: name, ofType: "gif")
        let url = URL.init(fileURLWithPath: path!)
        let source = CGImageSourceCreateWithURL(url as CFURL, nil)
        let imageCount = CGImageSourceGetCount(source!)
        var imageArray = Array<UIImage>()
        var imageWidth = Array<Int>()
        var imageHeight = Array<Int>()
        var time: Int = Int()
        for index in 0..<imageCount {
            let image = CGImageSourceCreateImageAtIndex(source!, index, nil)
            imageArray.append(UIImage(cgImage: image!))
            let info = CGImageSourceCopyPropertiesAtIndex(source!, index, nil) as! Dictionary<String, AnyObject>
            let width = Int(truncating: info[kCGImagePropertyPixelWidth as String]! as! NSNumber)
            let height = Int(truncating: info[kCGImagePropertyPixelHeight as String]! as! NSNumber)
            imageWidth.append(width)
            imageHeight.append(height)
            let timeDic = info[kCGImagePropertyGIFDictionary as String] as! Dictionary<String, AnyObject>
            time += Int(truncating: timeDic[kCGImagePropertyGIFDelayTime as String] as! NSNumber)
        }
        
        imageView.frame = CGRect(x: 0, y: 20, width: imageWidth[0], height: imageHeight[0])
        imageView.animationImages = imageArray
        imageView.animationDuration = TimeInterval(time)
        imageView.animationRepeatCount = 0
        imageView.startAnimating()
    }
}

