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

var va = Vector3(x: 1.0, y: 2.0, z: 3.0)
var vb = Vector3(x: 3.0, y: 4.0, z: 5.0)

func == (left: Vector3, right: Vector3) -> Bool {
    return left.x == right.x && left.y == right.y && left.z == right.z
}

func != (left: Vector3, right: Vector3) -> Bool {
    return !(left == right)
}

func < (left: Vector3, right: Vector3) -> Bool {
    if left.x != right.x {
        return left.x < right.x
    }
    if left.y != right.y {
        return left.y < right.y
    }
    if left.z != right.z {
        return left.z < right.z
    }
    return false
}

func <= (left: Vector3, right: Vector3) -> Bool {
    return left < right || left == right
}

func > (left: Vector3, right: Vector3) -> Bool {
    return !(left <= right)
}

func >= (left: Vector3, right: Vector3) -> Bool {
    return !(left < right)
}

va == vb
va != vb
va < vb
vb <= vb
va > vb
va >= vb

var arr = [2, 3, 1, 5]
arr.sort(by: >)
