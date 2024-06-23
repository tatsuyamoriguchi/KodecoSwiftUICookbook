//
//  SwipeToDelete.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/23/24.
//

import SwiftUI

struct SwipeToDelete: View {
    
    @State private var items = ["Item 1", "Item 2","Item 3", "Item 4", "item5"]

    var body: some View {
        NavigationStack {    
            List {
                ForEach(items, id: \.self) { item in
                    Text(item)
                }
                .onDelete(perform: deleteItem)
            }
            .navigationTitle("Swipe to Delete")
        }
    }
    
    private func deleteItem(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}


#Preview {
    SwipeToDelete()
}
