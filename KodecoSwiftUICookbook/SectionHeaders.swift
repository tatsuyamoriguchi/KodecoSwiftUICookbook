//
//  SectionHeaders.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/10/24.
//

import SwiftUI

struct Item: Identifiable {
    let id = UUID()
    let name: String
}

struct SectionHeaders: View {
    let sectionsAndItems: [String: [Item]] = [
        "Section 1": [
            Item(name: "Item 1"),
            Item(name: "Item 2")
        ],
        "Section 2": [
            Item(name: "Item 3"),
            Item(name: "Item 4")
        ]
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(Array(sectionsAndItems.keys), id: \.self) { section in
                    Section(header: Text(section)) {
                        ForEach(sectionsAndItems[section] ?? []) { item in
                            Text(item.name)

                        }
                    }
                }
            }
            .navigationTitle("My List")
        }
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SectionHeaders()
}
