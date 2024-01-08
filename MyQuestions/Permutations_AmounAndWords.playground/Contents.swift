import Foundation

func amountPermutations(arr: [String], targetWord: String) -> Int {
    var results: Int = 0// = [String: String]()
    var targetSorted = targetWord.sorted()
    arr.forEach { word in
        if word.sorted() == targetSorted {
            results += 1
        }
    }
    return results
}

amountPermutations(arr: ["aab", "acbd", "bca", "abe"], targetWord: "abc")

func wordsOfPermutations(arr: [String], targetWord: String) -> [String] {
    var results = [String]()
    var targetSorted = targetWord.sorted()
    arr.forEach { word in
        if word.sorted() == targetSorted {
            results.append(word)
        }
    }
    return results
}

wordsOfPermutations(arr: ["aab", "acb", "bca", "abe"], targetWord: "abc")
