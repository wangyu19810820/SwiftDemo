//
//  DrawView.swift
//  DrawDemo
//
//  Created by wang yu on 2021/10/3.
//

import UIKit

@IBDesignable class DrawView: UIView {

    @IBInspectable var plus: Bool = false {
        didSet {
            setNeedsDisplay()
        }
    }
    @IBInspectable var horizontalScale: CGFloat = 0.5 {
        didSet {
            setNeedsDisplay()
        }
    }
    @IBInspectable var verticalScale: CGFloat = 0.5 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    override func draw(_ rect: CGRect) {
        plus ? UIColor.green.setFill() : UIColor.red.setFill()
        
        var rect = rect
        let hScale = min(max(horizontalScale, 0), 1)
        if hScale != 1 {
            let totalWidth = rect.width
            rect.size.width = totalWidth * hScale
            rect.origin.x = (totalWidth - rect.width) * 0.5
        }
        
        let vScale = min(max(verticalScale, 0), 1)
        if vScale != 1 {
            let totalHeight = rect.height
            rect.size.height = totalHeight * vScale
            rect.origin.y = (totalHeight - rect.height) * 0.5
        }
        
        let oval = UIBezierPath(ovalIn: rect)
        oval.fill()
        
        UIColor.white.setStroke()
        let horizontalLine = UIBezierPath()
        horizontalLine.lineWidth = rect.height * 0.1
        horizontalLine.move(to: CGPoint(x: rect.minX + rect.width * 0.25, y: rect.midY))
        horizontalLine.addLine(to: CGPoint(x: rect.minX + rect.width * 0.75, y: rect.midY))
        horizontalLine.stroke()
        
        if !plus {
            return
        }
        
        let verticalLine = UIBezierPath()
        verticalLine.lineWidth = rect.width * 0.1
        verticalLine.move(to: CGPoint(x: rect.midX, y: rect.minY + rect.height * 0.25))
        verticalLine.addLine(to: CGPoint(x: rect.midX, y: rect.minY + rect.height * 0.75))
        verticalLine.stroke()
    }

}
