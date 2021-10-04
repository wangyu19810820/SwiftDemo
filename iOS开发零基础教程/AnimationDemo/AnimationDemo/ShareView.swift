//
//  ShareView.swift
//  AnimationDemo
//
//  Created by wang yu on 2021/10/4.
//

import UIKit

class ShareView: UIView {

    private var logo: UIImageView!
    private var titleLabel: UILabel!
    private var subtitleLabel: UILabel!
    private var wechatIcon: UIImageView!
    private var qqIcon: UIImageView!
    private var mailIcon: UIImageView!
    private var closeButton: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.black.withAlphaComponent(0.9)
        
        let vStack = UIStackView()
        vStack.translatesAutoresizingMaskIntoConstraints = false
        vStack.axis = .vertical
        vStack.spacing = 30
        vStack.alignment = .center
        addSubview(vStack)
        
        logo = UIImageView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.image = UIImage(systemName: "checkmark")
        vStack.addArrangedSubview(logo)
        
        addConstraint(
            NSLayoutConstraint(
                item: vStack,
                attribute: .centerY,
                relatedBy: .equal,
                toItem: self,
                attribute: .centerY,
                multiplier: 0.5,
                constant: 0
            )
        )
        
        NSLayoutConstraint.activate([
            vStack.centerXAnchor.constraint(equalTo: centerXAnchor),
            logo.widthAnchor.constraint(equalToConstant: 120),
            logo.heightAnchor.constraint(equalTo: logo.widthAnchor)
        ])
        
        titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.font = .boldSystemFont(ofSize: 25)
        titleLabel.textColor = .white
        titleLabel.text = "发布成功"
        vStack.addArrangedSubview(titleLabel)
        
        subtitleLabel = UILabel()
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.font = .systemFont(ofSize: 18)
        subtitleLabel.textColor = .white
        subtitleLabel.text = "快去分享给好友吧~"
        vStack.addArrangedSubview(subtitleLabel)
        
        let hStack = UIStackView()
        hStack.translatesAutoresizingMaskIntoConstraints = false
        hStack.distribution = .equalSpacing
        addSubview(hStack)
        
        NSLayoutConstraint.activate([
            hStack.leftAnchor.constraint(equalTo: leftAnchor, constant: 60),
            hStack.rightAnchor.constraint(equalTo: rightAnchor, constant: -60),
            hStack.topAnchor.constraint(equalTo: centerYAnchor, constant: 20),
        ])
        
        wechatIcon = createIcon("wechat.jpeg")
        hStack.addArrangedSubview(wechatIcon)
        
        qqIcon = createIcon("qq")
        hStack.addArrangedSubview(qqIcon)
        
        mailIcon = createIcon("mail.jpeg")
        hStack.addArrangedSubview(mailIcon)
        
        closeButton = UIButton()
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        closeButton.setImage(UIImage(named: "close.jpg"), for: .normal)
        closeButton.addTarget(self, action: #selector(closeButtonClick), for: .touchUpInside)
        addSubview(closeButton)
        
        NSLayoutConstraint.activate([
            closeButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            closeButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -60),
            closeButton.widthAnchor.constraint(equalToConstant: 40),
            closeButton.heightAnchor.constraint(equalTo: closeButton.widthAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func startAnimation() {
        transform = .init(scaleX: 0, y: 0)
        alpha = 0
        logo.alpha = 0
        titleLabel.alpha = 0
        subtitleLabel.alpha = 0
        let iconTransform = CGAffineTransform(translationX: 0, y: UIScreen.main.bounds.height)
        wechatIcon.transform = iconTransform
        qqIcon.transform = iconTransform
        mailIcon.transform = iconTransform
        closeButton.alpha = 0
        
        UIView.animate(withDuration: 0.3) {
            self.transform = .identity
            self.alpha = 1
        }
        
        UIView.animate(withDuration: 0.3, delay: 0.3) {
            self.logo.alpha = 1
        }
        UIView.animate(withDuration: 0.3, delay: 0.4) {
            self.titleLabel.alpha = 1
        }
        UIView.animate(withDuration: 0.3, delay: 0.5) {
            self.subtitleLabel.alpha = 1
        }
        
        UIView.animate(withDuration: 0.5, delay: 0.6, usingSpringWithDamping: 0.7, initialSpringVelocity: 0) {
            self.wechatIcon.transform = .identity
        }
        UIView.animate(withDuration: 0.5, delay: 0.7, usingSpringWithDamping: 0.7, initialSpringVelocity: 0) {
            self.qqIcon.transform = .identity
        }
        UIView.animate(withDuration: 0.5, delay: 0.8, usingSpringWithDamping: 0.7, initialSpringVelocity: 0) {
            self.mailIcon.transform = .identity
        }
        
        UIView.animate(withDuration: 0.2, delay: 0.9) {
            self.closeButton.alpha = 1
        }
    }
    
    private func createIcon(_ name: String) -> UIImageView {
        let icon = UIImageView()
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.image = UIImage(named: name)
        
        NSLayoutConstraint.activate([
            icon.widthAnchor.constraint(equalToConstant: 40),
            icon.heightAnchor.constraint(equalTo: icon.widthAnchor),
        ])
        
        return icon
    }
    
    @objc private func closeButtonClick() {
        removeFromSuperview()
    }
}
