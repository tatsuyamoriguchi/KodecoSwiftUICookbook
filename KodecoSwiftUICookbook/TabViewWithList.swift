//
//  TabViewWithList.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/11/24.
//

import SwiftUI

struct TabViewWithList: View {
    var animals = ["Lion","Tiger","Elephant", "Leopard"]
    var plants = ["Rose", "Lily", "Tulip", "Orchid"]
    
    var body: some View {
        TabView {
            List(animals, id: \.self) { animal in
                Text(animal)
            }
            .tabItem {
                Image(systemName: "hare")
                Text("Animals")
            }
            List(plants, id: \.self) { plant in
                Text(plant)
            }
//            SearchBarInList()
            .tabItem {
                Image(systemName: "leaf")
                Text("Plants")
                
            }
        }
    }
}

#Preview {
    TabViewWithList()
}
