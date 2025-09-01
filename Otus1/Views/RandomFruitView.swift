//
//  RandomFruitView.swift
//  Otus1
//
//  Created by Ступивцев Дмитрий Владимирович on 01.09.2025.
//

import SwiftUI

struct RandomFruitView: View {
    @State var fruits: [Fruit]
    var onFruitSelected: (Fruit) -> Void
    
    var body: some View {
        Button("Мне повезет!") {
            if let fruit = fruits.randomElement() {
                onFruitSelected(fruit)
            }
        }
    }
}

#Preview {
    RandomFruitView(
        fruits: [
            Fruit(name: "Яблоко"),
            Fruit(name: "Апельсин"),
            Fruit(name: "Киви"),
            Fruit(name: "Лимон"),
            Fruit(name: "Манго"),
            Fruit(name: "Банан"),
        ],
        onFruitSelected: {
            print("Выбран фрукт: \($0.name)")
        }
    )
}
