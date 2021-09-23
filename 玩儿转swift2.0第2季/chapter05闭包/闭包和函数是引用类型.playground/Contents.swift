import UIKit

func runningMetersWithMetersPerDay(_ metersPerDay: Int) -> () -> Int {
    var totalMeters = 0
    return {
        totalMeters += metersPerDay
        return totalMeters
    }
}

var planA = runningMetersWithMetersPerDay(2000)
planA()
planA()
planA()

var planB = runningMetersWithMetersPerDay(5000)
planB()
planB()

var anotherPlan = planB
anotherPlan()

planB()

let planC = runningMetersWithMetersPerDay(3000)
planC()
planC()

//planC = runningMetersWithMetersPerDay(6000)
