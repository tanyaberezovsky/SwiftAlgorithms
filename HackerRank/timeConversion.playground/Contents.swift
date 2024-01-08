import Foundation
/*
 Given a time in -hour AM/PM format, convert it to military (24-hour) time.

 Note: - 12:00:00AM on a 12-hour clock is 00:00:00 on a 24-hour clock.
 - 12:00:00PM on a 12-hour clock is 12:00:00 on a 24-hour clock.

 Example


 Return '12:01:00'.


 Return '00:01:00'.
 */
func timeConversion(s: String) -> String {
    let isAM = s.suffix(2).uppercased().hasSuffix("AM")

    let minutesSeconds = s.prefix(8).suffix(6)

    var hour = ""
    
    if s.hasPrefix("12") {
        hour = isAM ? "00" : "12"
    } else {
        hour = isAM ? String(s.prefix(2)) : "\((Int(s.prefix(2)) ?? 0) + 12)"
    }
    return "\(hour)\(minutesSeconds)"
}

//timeConversion(s: "12:01:22aM")
//timeConversion(s: "12:01:22PM")
//timeConversion(s: "09:01:22AM")
//timeConversion(s: "09:01:22PM")
timeConversion(s: "11:59:59PM")


func findMedian(arr: [Int]) -> Int {
    // Write your code here
    var minimum = arr[0]
arr.forEach { num in
    minimum = min(minimum, num)
}
    return (arr.count + minimum) / 2

}

findMedian(arr: [0, 1, 2, 3, 4, 5, 6])//3
findMedian(arr: [4, 1, 0, 5, 6])//4
findMedian(arr: [0, 1, 2, 5, 6])//2
