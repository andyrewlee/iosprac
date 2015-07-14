import UIKit

let suits = ["Spades", "Diamonds", "Hearts", "Clovers"]
let nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

var deckOfCards = [String: [Int]]()

// your code here
for suit in suits {
    deckOfCards[suit] = [Int]()
    for num in nums {
        deckOfCards[suit]?.append(num)
    }
}

print(deckOfCards)