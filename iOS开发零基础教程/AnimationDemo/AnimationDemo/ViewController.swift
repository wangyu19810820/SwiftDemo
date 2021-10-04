//
//  ViewController.swift
//  AnimationDemo
//
//  Created by wang yu on 2021/10/3.
//

import UIKit

class ViewController: UIViewController {

    private var frameLabel: UILabel!
    private var centerLabel: UILabel!
    private var transformLabel: UILabel!
    private var constraintLable: UILabel!
    private var leftConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        frameLabel = createLabel(y: 100, text: "Frame")
        centerLabel = createLabel(y: frameLabel.frame.maxY + 20, text: "Center")
        transformLabel = createLabel(y: centerLabel.frame.maxY + 20, text: "Transform")
        constraintLable = createLabel(y: 0, text: "Constraint")
        constraintLable.translatesAutoresizingMaskIntoConstraints = false
//        view.addConstraint(
//            NSLayoutConstraint(
//                item: constraintLable,
//                attribute: .top,
//                relatedBy: .equal,
//                toItem: transformLabel,
//                attribute: .bottom,
//                multiplier: 1,
//                constant: 20
//            )
//        )

        leftConstraint = constraintLable.leftAnchor.constraint(equalTo: view.leftAnchor)
        NSLayoutConstraint.activate([
            leftConstraint,
            constraintLable.topAnchor.constraint(equalTo: transformLabel.bottomAnchor, constant: 20),
            constraintLable.widthAnchor.constraint(equalToConstant: 100),
            constraintLable.heightAnchor.constraint(equalToConstant: 100),
        ])
        view.layoutIfNeeded()
        
        let control = UISwitch()
        control.frame.origin = CGPoint(x: (view.bounds.width - control.frame.width) * 0.5,
                                       y: constraintLable.frame.maxY + 20)
        control.addTarget(self, action: #selector(changeControl(_:)), for: .valueChanged)
        view.addSubview(control)
        
        let shareButton = UIButton(frame: CGRect(x: (view.bounds.width - 100) * 0.5, y: control.frame.maxY + 20, width: 100, height: 50))
        shareButton.backgroundColor = .blue
        shareButton.setTitleColor(.white, for: .normal)
        shareButton.setTitle("Share", for: .normal)
        shareButton.addTarget(self, action: #selector(shareButtonClick), for: .touchUpInside)
        view.addSubview(shareButton)
    }

    private func createLabel(y: CGFloat, text: String) -> UILabel {
        let label = UILabel(frame: CGRect(x: 0, y: y, width: 100, height: 100))
        label.backgroundColor = .systemGray3
        label.font = .boldSystemFont(ofSize: 20)
        label.textColor = .black
        label.textAlignment = .center
        label.text = text
        view.addSubview(label)
        return label
    }
    
    @objc func changeControl(_ control: UISwitch) {
        if control.isOn {
            self.leftConstraint.constant = self.view.bounds.width - self.constraintLable.frame.width
            UIView.animate(withDuration: 0.5) {
                self.frameLabel.frame.origin.x = self.view.bounds.width - self.frameLabel.frame.width
                self.centerLabel.center.x = self.view.bounds.width - self.centerLabel.frame.width * 0.5
                self.transformLabel.transform = CGAffineTransform(translationX: self.view.bounds.width - self.transformLabel.frame.width, y: 0)
                self.view.layoutIfNeeded()
            }
        } else {
            leftConstraint.constant = 0
            UIView.animate(
                withDuration: 1,
                delay: 0,
                usingSpringWithDamping: 0.5,
                initialSpringVelocity: 0
            ) {
                self.frameLabel.frame.origin.x = 0
                self.centerLabel.center.x = self.centerLabel.frame.width * 0.5
                self.transformLabel.transform = .identity
                self.view.layoutIfNeeded()
            }
        }
    }
    
    @objc func shareButtonClick() {
        let shareView = ShareView(frame: view.bounds)
        view.addSubview(shareView)
        shareView.startAnimation()
    }
}

