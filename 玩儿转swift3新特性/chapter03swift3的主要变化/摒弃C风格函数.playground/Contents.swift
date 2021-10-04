import UIKit
import PlaygroundSupport

class View: UIView {
    override func draw(_ rect: CGRect) {
        self.backgroundColor = UIColor.yellow
        
        guard let context = UIGraphicsGetCurrentContext() else {
            print("Error")
            return
        }
        
        context.setStrokeColor(UIColor.red.cgColor)
        
        let strokeWidth: CGFloat = 3.0
        context.setLineWidth(strokeWidth)
        
        let center = CGPoint(x: self.frame.midX, y: self.frame.midY)
        let radius = self.frame.width / 2.0 - strokeWidth
        let startAngle: CGFloat = 0.0
        let endAngle = 2 * CGFloat.pi
        
        context.addArc(center: center,
                       radius: radius,
                       startAngle: startAngle,
                       endAngle: endAngle,
                       clockwise: false)
        context.drawPath(using: .stroke)
    }
}

let view = View(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
PlaygroundPage.current.liveView = view

let queue = DispatchQueue(label: "com.test.myqueue")
queue.async {
    for i in 0..<1_000 {
        print(i, "- Hello World")
    }
}
for i in 0..<1_000 {
    print("\(i) - Hello Swift")
}

FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
Bundle.main
