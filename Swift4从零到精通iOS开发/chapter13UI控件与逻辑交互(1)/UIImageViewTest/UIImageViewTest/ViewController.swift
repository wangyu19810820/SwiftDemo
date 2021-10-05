//
//  ViewController.swift
//  UIImageViewTest
//
//  Created by wang yu on 2021/10/5.
//

import UIKit

class ViewController: UIViewController {

    var flag = true
    var birdImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named: "a")
        let imageView = UIImageView(image: image)
        imageView.frame = CGRect(x: 30, y: 30, width: 200, height: 200)
        self.view.addSubview(imageView)
        
        var imageArray = Array<UIImage>()
        for index in 1...8 {
            let birdImage = UIImage(named: "bird\(index)")
            imageArray.append(birdImage!)
        }
        
        birdImageView = UIImageView(frame: CGRect(x: 30, y: 250, width: 200, height: 100))
        birdImageView.image = UIImage(named: "a")
        birdImageView.animationImages = imageArray
        birdImageView.animationDuration = 3
        birdImageView.animationRepeatCount = 0
        birdImageView.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(click))
        birdImageView.addGestureRecognizer(tap)
        self.view.addSubview(birdImageView)
        birdImageView.startAnimating()
    }

    @objc private func click() {
        flag ? birdImageView.stopAnimating() : birdImageView.startAnimating()
        flag = !flag
    }
}

