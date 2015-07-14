protocol HackerShack {
    var deposit: Int { get }
    func singSong()
}

class ShackMember: HackerShack, Equatable, Comparable, CustomStringConvertible {
    var deposit: Int
    
    var description =  "Shacker for lyfe"
    
    init(deposit: Int) {
        self.deposit = deposit
    }
    
    func singSong() {
        print("I keep on falling")
    }
}

// Equatable protocol
func ==(lhs: ShackMember, rhs: ShackMember) -> Bool {
    return lhs.deposit == rhs.deposit
}

// Comparable protocol
func <(lhs: ShackMember, rhs: ShackMember) -> Bool {
    return lhs.deposit < rhs.deposit
}


func welcomeMember(T: HackerShack) {
    print(T.deposit)
    T.singSong()
}

let eduardo = ShackMember(deposit: 500)
let andrew = ShackMember(deposit: 200)

andrew == eduardo
eduardo > andrew

print(andrew)