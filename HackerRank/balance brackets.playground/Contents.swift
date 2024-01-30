import Foundation

func isBalanced(s: String) -> String {
    guard s.count % 2 == 0, !s.isEmpty else { return "NO" }
    var stuck = [Character]()
    
    for char in s {
        if char.isOpenBracket {
            stuck.append(char)
        } else {
            if stuck.isEmpty {
                return "NO"
            }
            if let open = stuck.popLast(), !char.isPairBracket(char: open) {
                return "NO"
            }
        }
    }
    
    return stuck.isEmpty ? "YES" : "NO"
}

extension Character {
    var isOpenBracket: Bool {
        self == "{" || self == "(" || self == "["
    }

    func isPairBracket(char: Character) -> Bool {
        (self == "}" && char == "{") ||
        (self == "]" && char == "[" ) ||
        (self == ")" && char == "(" )
    }
}

print(isBalanced(s: ""))
print(isBalanced(s: "}]"))

print(isBalanced(s: "{)}"))
print(isBalanced(s: "}"))
print(isBalanced(s: "((}"))
print(isBalanced(s: "((}}"))
print(isBalanced(s: "{)}["))
print(isBalanced(s: "}["))
print(isBalanced(s: "((}["))
print(isBalanced(s: "((}}["))
print(isBalanced(s: "(({}[])[])"))
