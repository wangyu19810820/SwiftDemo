import UIKit

let superViewColor = #keyPath(UIView.superview.backgroundColor)

let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
let label = UILabel(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
view.backgroundColor = UIColor.blue
view.addSubview(label)

label.value(forKeyPath: superViewColor)
label.superview?.backgroundColor
