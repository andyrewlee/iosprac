protocol HackerShack {
    var deposit: Int { get }
    func singSong()
}

class ShackMember: HackerShack {
    var deposit: Int
    
    init(deposit: Int) {
        self.deposit = deposit
    }
    
    func singSong() {
        print("I keep on falling")
    }
}

func welcomeMember(T: HackerShack) {
    print(T.deposit)
    T.singSong()
}

let eduardo = ShackMember(deposit: 500)
welcomeMember(eduardo)