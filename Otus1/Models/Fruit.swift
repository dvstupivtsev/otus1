//
//  Fruit.swift
//  Otus1
//
//  Created by Ступивцев Дмитрий Владимирович on 01.09.2025.
//

import Foundation

struct Fruit: Hashable, Identifiable {
    let id: UUID = UUID()
    let name: String
}
