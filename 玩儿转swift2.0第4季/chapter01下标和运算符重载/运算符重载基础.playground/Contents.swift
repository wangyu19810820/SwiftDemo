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

func + (left: Vector3, right: Vector3) -> Vector3 {
    return Vector3(x: left.x + right.x, y: left.y + right.y, z: left.z + right.z)
}

func - (left: Vector3, right: Vector3) -> Vector3 {
    return Vector3(x: left.x - right.x, y: left.y - right.y, z: left.z - right.z)
}

func * (left: Vector3, right: Vector3) -> Double {
    return left.x * right.x + left.y * right.y + left.z * right.z
}

func * (left: Vector3, a: Double) -> Vector3 {
    return Vector3(x: left.x * a, y: left.y * a, z: left.z * a)
}

func * (a: Double, right: Vector3) -> Vector3 {
    return right * a
}

func += (left: inout Vector3, right: Vector3) {
    left = left + right
}

prefix func - (vector: Vector3) -> Vector3 {
    return Vector3(x: -vector.x, y: -vector.y, z: -vector.z)
}
var va = Vector3(x: 1.0, y: 2.0, z: 3.0)
var vb = Vector3(x: 3.0, y: 4.0, z: 5.0)

va + vb

let arr = [1, 2, 3, 4]
arr.reduce(0, +)
arr.reduce(1, *)

vb - va
va * vb
va * -1.0
-1.0 * va
va += vb
va
-va
