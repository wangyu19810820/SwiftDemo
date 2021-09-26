import UIKit

/// For algorithms or other use, you can use some other keywords, such as `Precondition`, `Postcondition`, `Requires`, `Invariant`, `Complexity`, `Important` and `Warning`.
///
/// Suppose here we have a mysterial algorihtm
///
/// - Precondition: The object must contain all the information in the world.
/// - Postcondition: After the algorithm, the object will contain all the information in the universe.
/// - Requires: All the information in the object should be sorted.
/// - Invariant: The object will maintain sorted.
/// - Complexity: O(n^n)
/// - Important: Please only call this algorithm once in your program.
/// - Warning: Very computation consuming.
/// - Attention: Same as Warning.
/// - Note: I terribly doubt this algorihtm.
/// - Remark: Same as Note.
///
/// - Parameter object: The algorithm will use this single object to change the world.
/// - Throws: `MyError.JustImpossible` if the algorithm's precondition can not be satisfied.
/// - Returns: the object contains all the information in the universe.
func mysteriousAlgorithm(object: AnyObject) {
    return
}

/// Some meta information
///
/// This is an example
/// - Author: wangyu
/// - Authors: All the geeks in the world:)
/// - Copyright: wangyu@2021
/// - Date: 26 Sep 2021
/// - Since: iOS15
/// - Version: 3.1415926
func showMetaComments() -> String {
    let text = "Hello comments:)"
    return text
}
