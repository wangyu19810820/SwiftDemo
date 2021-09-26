import UIKit

struct Matrix {
    var data: [[Double]]
    let row: Int
    let col: Int
    
    init(row: Int, col: Int) {
        self.row = row
        self.col = col
        data = [[Double]]()
        for _ in 0..<row {
            data.append(Array(repeating: 0.0, count: col))
        }
    }
    
    subscript(x:Int, y:Int) -> Double {
        get {
            assert(x >= 0 && x < row && y >= 0 && y < col, "Index out of range")
            return data[x][y]
        }
        set {
            assert(x >= 0 && x < row && y >= 0 && y < col, "Index out of range")
            data[x][y] = newValue
        }
    }
    
    subscript(x: Int) -> [Double] {
        get {
            assert(x >= 0 && x < row, "Index out of range")
            return data[x]
        }
        set(vector) {
            assert(x >= 0 && x < row, "Index out of range")
            assert(vector.count == col, "Column number does not match")
            data[x] = vector
        }
    }
}

var m = Matrix(row: 2, col: 2)
m[1, 1]
//m[2, 2]
m[1, 1] = 100.0

m[0] = [1.5, 4.5]
m[0][1]
m[0, 0]
