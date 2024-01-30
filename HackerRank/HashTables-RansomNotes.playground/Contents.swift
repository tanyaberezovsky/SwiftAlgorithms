import Foundation


func checkMagazine(magazine: [String], note: [String]) -> Void {
//    var dictMagazine = [String: Int]()// = Dictionary(dictionaryLiteral: magazine.map({ ($0, $0) } ))
//    
    var noteExists = true
//    magazine.forEach { word in
//        if let coutWord = dictMagazine[word] {
//            dictMagazine[word] = coutWord + 1
//        } else {
//            dictMagazine[word] = 1
//        }
//    }
    var dictMagazine = magazine.reduce(into: [:]) { $0[$1, default: 0] += 1 }
    magazine.reduce(into: [:]) { partialResult, <#String#> in
        <#code#>
    }
    for noteWord in note {
        if let coutWord = dictMagazine[noteWord], coutWord > 0 {
                dictMagazine[noteWord] = coutWord - 1
        } else {
            noteExists = false
            break
        }
    }
    noteExists ? print("Yes") : print("No")
}

checkMagazine(magazine: ["give","me", "one", "one","grand","today","night"], note: ["give","one","one1","grand","today"])
