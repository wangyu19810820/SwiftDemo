import UIKit

var str = "Hello, Swift"

str.append("!")
str
str.appending("!!!!!")
str

var scores = [98, 92, 78, 100]
for scoreInfo in scores.enumerated() {
    print(scoreInfo)
}

scores.sorted()
scores
scores.sort()
scores

scores.sorted(by: >)
scores

scores.sort(by: >)
scores

var arr = [0, 1, 2, 3, 4]
arr.reversed()
arr

arr.reverse()
arr

for i in (1...5).reversed() {
    print(i)
}

for (index, item) in arr.reversed().enumerated() {
    print(index, item)
}
