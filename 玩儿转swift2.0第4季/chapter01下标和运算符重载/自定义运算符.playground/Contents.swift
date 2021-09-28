import UIKit

struct Vector3 {
    var x: Double = 0.0
    var y: Double = 0.0
    var z: Double = 0.0
    
    func length() -> Double {
        return sqrt(x * x + y * y + z * z)
    }
    
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

postfix operator +++
postfix func +++(vector: inout Vector3) -> Vector3 {
    let ret = vector
    vector += Vector3(x: 1, y: 1, z: 1)
    return ret
}

prefix operator +++
prefix func +++(vector: inout Vector3) -> Vector3 {
    vector += Vector3(x: 1, y: 1, z: 1)
    return vector
}

precedencegroup jianjiaoPrecedence {
    associativity: left
    higherThan: MultiplicationPrecedence
}
infix operator ^: jianjiaoPrecedence
func ^ (left: Vector3, right:Vector3) -> Double {
    return acos((left * right) / (left.length() * right.length()))
}

precedencegroup mulMulPrecedence {
    associativity: right
    higherThan: MultiplicationPrecedence
}
infix operator **: mulMulPrecedence
func **(x: Double, p:Double) -> Double {
    return pow(x, p)
}

var va = Vector3(x: 1.0, y: 2.0, z: 3.0)
var vb = Vector3(x: 4.0, y: 5.0, z: -6.0)

va+++
va
+++va
va
va ^ vb

2**3
2**3**2
1+2**3**2
5*2**3**2
