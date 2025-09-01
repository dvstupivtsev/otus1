//
//  FruitDetailsView.swift
//  Otus1
//
//  Created by Ступивцев Дмитрий Владимирович on 01.09.2025.
//

import SwiftUI

struct FruitDetailsView: View {
    @State var fruit: Fruit
    
    var body: some View {
        Text(fruit.name)
    }
}

#Preview {
    FruitDetailsView(fruit: Fruit(name: "Яблоко"))
}
