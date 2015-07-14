protocol GuardianAngelDelegate {
    func protect()
}

class HelplessVictim {
    var guardian: GuardianAngelDelegate?
    
    func attacked() {
        guardian?.protect()
    }
}

class GuardianAngel: GuardianAngelDelegate {
    func protect() {
        print("Tuxedo Mask")
    }
}

let jimmy = HelplessVictim()
let angel = GuardianAngel()

jimmy.attacked()
jimmy.guardian = angel
jimmy.attacked()