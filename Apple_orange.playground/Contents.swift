import UIKit
import Foundation


//s & t là khoảng cách của nhà Sam.
//a nơi cây táo đứng
//b nơi cây cam đứng
//apples: khoảng cách táo
//otanges: khoảng cách cam


func countApplesAndOrangess(s: Int, t: Int ,a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
    
    let appleLocation = returnDistance(tree: a, fruit: apples)
    let orangeLovation = returnDistance(tree: b, fruit: oranges)
    
    ckeckIfLocatedSamhouse(point: s, point: t, appleLocation: appleLocation, orangeLocation: orangeLovation)
    
}

func returnDistance(tree located: Int, fruit array: [Int]) -> [Int] {
    var resultArr = [Int]()
    for location in array {
        resultArr.append(located + location)
    }
    return resultArr
}

func ckeckIfLocatedSamhouse(point start: Int, point end: Int, appleLocation: [Int], orangeLocation: [Int]){
    checkContain(start: start, end: end, arrayLoc: appleLocation)
    checkContain(start: start, end: end, arrayLoc: orangeLocation)
}

func checkContain(start: Int, end: Int, arrayLoc: [Int]) {
    var count: Int = 0
    for point in start...end {
        if arrayLoc.contains(point) {
            count += 1
        }
    }
    print(count)
}
//refactor all in once function
func countApplesAndOranges(s: Int,t: Int,a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
    var appleLocation = [Int]()
    var orangeLocation = [Int]()
    var applePoint: Int = 0
    var orangePoint: Int = 0
    
    
    for location in apples {
        appleLocation.append(a + location)
    }
    
    
    for location in oranges {
        orangeLocation.append(b + location)
    }
    
    for point in s...t {
        if appleLocation.contains(point) {
            applePoint += 1
        }
    }
    
    for point in s...t {
        if orangeLocation.contains(point) {
            orangePoint += 1
        }
    }
    
    print(applePoint)
    print(orangePoint)
    
}



//countApplesAndOranges(s: 7, t: 10, a: 4, b: 12, apples: [2,3,-4], oranges: [3,-2,-4])

func countApplesAndOrangeE(s: Int, t: Int, a: Int, b: Int,apples: [Int], oranges: [Int]) {
    let applePoint = (apples.filter{ $0 + a >= s && $0 + a <= t}.count)
    let orangesPoint = (oranges.filter{$0 + b >= s && $0 + b <= t}.count)
    
    print(applePoint)
    print(orangesPoint)
}

//countApplesAndOrangeE(s: 7, t: 10, a: 4, b: 12, apples: [2,3,-4], oranges: [3,-2,-4])



var myArr = [2,9,8,5,4]






