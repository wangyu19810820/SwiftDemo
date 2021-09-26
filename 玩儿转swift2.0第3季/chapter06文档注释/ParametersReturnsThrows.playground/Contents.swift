import UIKit

/// There are a few keywords Xcode can recognize automatically. The most common use one is Parameter, Throws, Returns.
/// - Parameter item1: This is item1
/// - Parameter item2: This is item2
func showKeywordsCommentsWithItem1(item1: AnyObject?, item2: AnyObject?) -> String {
    let text = "abc"
    return text
}

/// There are a few keywords Xcode can recognize automatically. The most common use one is Parameter, Throws, Returns.
/// - Parameters:
///     - item1: This is item1
///     - item2: This is item2
/// - Returns: the result string
/// - Throws: `MyError.BothNilError` if both item1 and item2 are nil
func showKeywordsCommentsWithItem2(item1: AnyObject?, item2: AnyObject?) -> String {
    let text = "abc"
    return text
}
