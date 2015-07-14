enum Direction {
    case North
    case South
    case West
    case East
}

let myDirection = Direction.North

switch myDirection {
case .North:
    print("North")
case .South:
    print("South")
case .West:
    print("West")
case .East:
    print("East")
}