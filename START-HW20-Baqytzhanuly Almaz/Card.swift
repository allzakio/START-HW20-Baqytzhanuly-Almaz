//
//  Card.swift
//  START-HW20-Baqytzhanuly Almaz
//
//  Created by allz on 9/5/23.
//

import Foundation

struct Cards: Decodable {
    var cards: [Card]
}

struct Card: Decodable {
    let name: String?
    let type: String?
    let manaCost: String?
    let setName: String?
    let number: String?
}
