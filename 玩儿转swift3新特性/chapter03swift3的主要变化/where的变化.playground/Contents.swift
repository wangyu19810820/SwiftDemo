import UIKit

let vector = (4, 0)

if case(let x, 0) = vector, x > 2 && x < 5 {
    print("It's the vector")
}

func doMath(a: Int?, b: Int?, c: Int?) -> Int? {
//    guard let a = a, a > 0,
//          let b = b, b <= 0,
//          let c = c, c % 2 == 0 else {
//              return nil
//    }
    
    guard let a = a, let b = b, let c = c,
          a > 0, b <= 0, c % 2 == 0 else {
              return nil
    }
    return 0
}

func anyCommonElements<T: Sequence, U: Sequence>(lhs: T, _ rhs: U) -> Bool
    where
    T.Iterator.Element: Equatable,
    T.Iterator.Element == U.Iterator.Element {
    return true
}
