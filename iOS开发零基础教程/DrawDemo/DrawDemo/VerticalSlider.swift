//
//  VerticalSlider.swift
//  DrawDemo
//
//  Created by wang yu on 2021/10/3.
//

import UIKit

protocol VerticalSliderDelegate: AnyObject {
    func verticalSliderDidChange(_ slider: VerticalSlider)
}

@IBDesignable class VerticalSlider: UIView {
    
    var delegate: VerticalSliderDelegate?;
    
    @IBInspectable var value: CGFloat = 0.5 {
        didSet {
            setNeedsLayout()
        }
    }

    private var thumb: UIView!
    private var minTrack: UIView!
    private var maxTrack: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        thumb = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        thumb.backgroundColor = .white
        thumb.layer.cornerRadius = thumb.bounds.height * 0.5
        thumb.layer.shadowOpacity = 0.2
        thumb.layer.shadowColor = UIColor.black.cgColor
        thumb.layer.shadowOffset = CGSize(width: 0, height: 3)
        thumb.layer.shadowRadius = 4
        addSubview(thumb)
        
        let pan = UIPanGestureRecognizer(target: self, action: #selector(panThumb(_:)))
        thumb.addGestureRecognizer(pan)
        
        minTrack = UIView(frame: CGRect(x: 13, y: 3, width: 4, height: 0))
        minTrack.backgroundColor = tintColor
        insertSubview(minTrack, belowSubview: thumb)
        
        maxTrack = UIView(frame: CGRect(x: 13, y: 0, width: 4, height: 0))
        maxTrack.backgroundColor = .systemGray5
        insertSubview(maxTrack, belowSubview: thumb)
    }
    
    private var sliderLength: CGFloat {
        bounds.height - thumb.frame.height
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let value = min(max(value, 0), 1)
        thumb.frame.origin.y = (bounds.height - thumb.frame.height) * value
        minTrack.frame.size.height = thumb.frame.midY - minTrack.frame.minY
        maxTrack.frame.origin.y = minTrack.frame.maxY
        maxTrack.frame.size.height = bounds.height - maxTrack.frame.minY - minTrack.frame.minY
    }
    
    @objc private func panThumb(_ pan: UIPanGestureRecognizer) {
        switch pan.state {
        case .changed:
            var y = thumb.frame.minY + pan.translation(in: pan.view).y
            y = min(max(y, 0), sliderLength)
            value = y / sliderLength
            pan.setTranslation(.zero, in: pan.view)
            delegate?.verticalSliderDidChange(self)
        default:
            break
        }
    }
}
