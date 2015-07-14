class Keyboard {
    weak var owner: Programmer?
    
    deinit {
        print("\(self) is being deallocated")
    }
}

class Programmer {
    var keyboards = [Keyboard]()
    
    deinit {
        print("\(self) is being deallocated")
    }
}

var programmer: Programmer! = Programmer()
var keyboard: Keyboard! = Keyboard()

programmer.keyboards.append(keyboard)
keyboard.owner = programmer

keyboard = nil
programmer = nil