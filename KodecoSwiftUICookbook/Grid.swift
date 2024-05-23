//
//  Grid.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 5/17/24.
//

import SwiftUI

struct Grid: View {
    let items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"]
    let columns = [
        GridItem(.fixed(50)),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        Text("Using LazyVGrid")
            .font(.title)
            .padding(20)
        
        LazyHGrid(rows: columns) {
            ForEach(items, id: \.self) { item in
                Text(item)
                    .frame(maxWidth: .infinity)
                    .frame(width: 100)
                    .background(.mint)
                    .foregroundColor(.white)
                    
            }
            .padding(20)

        }
        
        LazyVGrid(columns: columns, spacing: 50) {
            ForEach(items, id: \.self) { item in
                Text(item)
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .background(.mint)
                    .foregroundColor(.white)
            }
        }
        .padding(50)
        Spacer()
    }
}

#Preview {
    Grid()
}
