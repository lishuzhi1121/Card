//
//  Rank.swift
//  Card
//
//  Created by 李树志 on 2017/6/7.
//
//

public enum Rank: Int {
    case two = 2
    case three, four, five, six, seven, eight, nine, ten
    case jack, queen, king, ace
}


extension Rank: Comparable {
    static public func <(lhs: Rank, rhs: Rank) -> Bool {
        switch (lhs, rhs) {
        case (_, _) where lhs.rawValue == rhs.rawValue:
            return false
            
        case (.ace, _):
            return false
            
        default:
            return lhs.rawValue < rhs.rawValue
        }
    }
}

extension Rank: CustomStringConvertible {
    public var description: String {
        switch self {
        case .jack:
            return "J"
            
        case .queen:
            return "Q"
            
        case .king:
            return "K"
            
        case .ace:
            return "A"
            
        default:
            return "\(rawValue)"
        }
    }
}
