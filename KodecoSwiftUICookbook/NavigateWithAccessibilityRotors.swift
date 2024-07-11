//
//  NavigateWithAccessibilityRotors.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/11/24.
//

import SwiftUI

struct Fruit: Identifiable, Hashable {
    var id: String { name }
    let name: String
}

struct NavigateWithAccessibilityRotors: View {
    let fruits = ["Apple", "Banana", "Cherry", "Date", "Elderberry", "Fig", "Grape"].map(Fruit.init)
    
    var body: some View {
        List(fruits, id: \.self) { fruit  in
            Text(fruit.name)
        }
        .accessibilityRotor("Fruits", entries: fruits, entryLabel: \.name)
    }
}

#Preview {
    NavigateWithAccessibilityRotors()
}
