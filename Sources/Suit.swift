//
//  Suit.swift
//  Card
//
//  Created by 李树志 on 2017/6/7.
//
//

public enum Suit: String {
    case spades, hearts, diamonds, clubs
}


extension Suit: Comparable {
    static public func <(lhs: Suit, rhs: Suit) -> Bool {
        switch (lhs, rhs) {
        case (_, _) where lhs.rawValue == rhs.rawValue:
            return false
            
        case (.spades, _), (.hearts, .diamonds), (.hearts, .clubs), (.diamonds, .clubs):
            return false
            
        default:
            return true
        }
    }
}


extension Suit: CustomStringConvertible {
    public var description: String {
        switch self {
        case .spades:
            return "♠️"
        case .hearts:
            return "♥️"
        case .diamonds:
            return "♦️"
        case .clubs:
            return "♣️"
        }
    }
}
