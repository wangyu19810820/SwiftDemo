import UIKit

struct Matrix {
    var m: [[Int]]
    var row: Int
    var col: Int
    
    init?(_ arr2d:[[Int]]) {
        guard arr2d.count > 0 else {
            return nil
        }
        
        let row = arr2d.count
        let col = arr2d[0].count
        for i in 1..<row {
            if arr2d[i].count != col {
                return nil
            }
        }
        
        self.m = arr2d
        self.row = row
        self.col = col
    }
    
    func printMatrix() {
        for i in 0..<row {
            for j in 0..<col {
                print(m[i][j], terminator: "\t")
            }
            print()
        }
    }
    
    static func identityMatrix(n: Int) -> Matrix? {
        if n <= 0 {
            return nil
        }
        var arr2d:[[Int]] = []
        for i in 0..<n {
            var row = [Int](repeating: 0, count: n)
            row[i] = 1
            arr2d.append(row)
        }
        return Matrix(arr2d)
    }
}

if let m = Matrix([[1, 2], [3, 4]]) {
    m.printMatrix()
}

let e = Matrix.identityMatrix(n: 6)
e?.printMatrix()
