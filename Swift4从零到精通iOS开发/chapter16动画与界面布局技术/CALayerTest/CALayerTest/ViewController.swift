//
//  ViewController.swift
//  CALayerTest
//
//  Created by wang yu on 2021/10/9.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.bounds = CGRect(x: 0, y: 0, width: 100, height: 100)
        gradientLayer.position = CGPoint(x: 100, y: 100)
        gradientLayer.colors = [UIColor.red.cgColor, UIColor.green.cgColor, UIColor.blue.cgColor]
        gradientLayer.locations = [NSNumber(value: 0.2), NSNumber(value: 0.5), NSNumber(value: 0.7)]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
        self.view.layer.addSublayer(gradientLayer)
        
        let gradientLayer2 = CAGradientLayer()
        gradientLayer2.bounds = CGRect(x: 0, y: 0, width: 100, height: 100)
        gradientLayer2.position = CGPoint(x: 250, y: 100)
        gradientLayer2.colors = [UIColor.red.cgColor, UIColor.green.cgColor, UIColor.blue.cgColor]
        gradientLayer2.locations = [NSNumber(value: 0.2), NSNumber(value: 0.5), NSNumber(value: 0.7)]
        gradientLayer2.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        self.view.layer.addSublayer(gradientLayer2)
        
        let replicatorLayer = CAReplicatorLayer()
        replicatorLayer.position = CGPoint(x: 0, y: 150)
        let subLayer = CALayer()
        subLayer.bounds = CGRect(x: 0, y: 0, width: 20, height: 20)
        subLayer.position = CGPoint(x: 30, y: 100)
        subLayer.backgroundColor = UIColor.red.cgColor
        replicatorLayer.addSublayer(subLayer)
        replicatorLayer.instanceTransform = CATransform3DMakeTranslation(30, 0, 0)
        replicatorLayer.instanceCount = 10
        self.view.layer.addSublayer(replicatorLayer)
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.position = CGPoint.zero
        let path = CGMutablePath()
        path.move(to: CGPoint(x: 100, y: 300))
        path.addLine(to: CGPoint(x: 300, y: 300))
        path.addLine(to: CGPoint(x: 200, y: 400))
        path.addLine(to: CGPoint(x: 100, y: 300))
        shapeLayer.path = path
        shapeLayer.strokeStart = 0
        shapeLayer.strokeEnd = 1
        shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        shapeLayer.fillColor = UIColor.red.cgColor
        shapeLayer.strokeColor = UIColor.blue.cgColor
        shapeLayer.lineWidth = 1
        self.view.layer.addSublayer(shapeLayer)
    }


}

