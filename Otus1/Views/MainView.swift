//
//  ContentView.swift
//  Otus1
//
//  Created by Ступивцев Дмитрий Владимирович on 27.08.2025.
//

import SwiftUI

struct MainView: View {
    @State private var selectedTab: Int = 0
    @State private var selectedFruit: Fruit?
    @State var fruits = [
        Fruit(name: "Яблоко"),
        Fruit(name: "Апельсин"),
        Fruit(name: "Киви"),
        Fruit(name: "Лимон"),
        Fruit(name: "Манго"),
        Fruit(name: "Банан"),
    ]
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Tab("Фрукты", systemImage: "shuffle", value: 0) {
                RandomFruitView(fruits: fruits, onFruitSelected: {
                    selectedTab = 1
                    selectedFruit = $0
                })
            }
            
            Tab("Фрукты", systemImage: "list.bullet", value: 1) {
                NavigationStack {
                    FruitsListView(fruits: fruits, selectedFruit: $selectedFruit)
                        .navigationDestination(for: Fruit.self) { item in
                            FruitDetailsView(fruit: item)
                        }
                }
            }
            
            Tab("Инфо", systemImage: "text.rectangle.page", value: 2) {
                FruitsInfoView()
            }
        }
    }
}

#Preview {
    MainView()
}
