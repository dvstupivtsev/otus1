//
//  FruitsListView.swift
//  Otus1
//
//  Created by Ступивцев Дмитрий Владимирович on 01.09.2025.
//

import SwiftUI

struct FruitsListView: View {
    @State var fruits: [Fruit]
    @Binding var selectedFruit: Fruit?
    
    var body: some View {
        List(fruits) { item in
            NavigationLink(item.name, value: item)
        }
        .navigationDestination(item: $selectedFruit, destination: {
            Text($0.name)
        })
    }
}

#Preview {
    FruitsListView(
        fruits: [
            Fruit(name: "Яблоко"),
            Fruit(name: "Апельсин"),
            Fruit(name: "Киви"),
            Fruit(name: "Лимон"),
            Fruit(name: "Манго"),
            Fruit(name: "Банан"),
        ],
        selectedFruit: .constant(nil)
    )
}
