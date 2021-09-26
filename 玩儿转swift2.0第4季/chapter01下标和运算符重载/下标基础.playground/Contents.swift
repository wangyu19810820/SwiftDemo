import UIKit

struct Vector3 {
    var x: Double = 0.0
    var y: Double = 0.0
    var z: Double = 0.0
    
    subscript(index: Int) -> Double? {
        get {
            switch index {
            case 0: return x
            case 1: return y
            case 2: return z
            default: return nil
            }
        }
        set(newV) {
            guard let newV = newV else {
                return
            }
            switch index {
            case 0: x = newV
            case 1: y = newV
            case 2: z = newV
            default: return
            }
        }
    }
    
    subscript(axis: String) -> Double? {
        get {
            switch axis {
            case "x","X": return x
            case "y","Y": return y
            case "z","Z": return z
            default: return nil
            }
        }
        set {
            guard let newValue = newValue else {
                return
            }
            switch axis {
            case "x","X": x = newValue
            case "y","Y": y = newValue
            case "z","Z": z = newValue
            default: ()
            }
        }
    }
}

var v = Vector3(x: 1.0, y: 2.0, z: 3.0)
v.x
v[0]
v[100]
v["y"]
v["Hello"]
v[0] = 100
v

v["Z"] = 200
v
