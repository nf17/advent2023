import Foundation

var sum = 0
let url = URL(filePath: "input.txt")
do {
    let contents = try String(contentsOf: url, encoding: .utf8)
    let inputString = contents.components(separatedBy: "\n")
    let output = inputString.map({
        let firstDigit = $0.first(where: {$0.isNumber})!
        let lastDigit = $0.last(where: {$0.isNumber})!
        return Int(String(firstDigit))!*10 + Int(String(lastDigit))!
    }).reduce(0,+)
    print(output)
}
catch{
    print(error.localizedDescription)
}