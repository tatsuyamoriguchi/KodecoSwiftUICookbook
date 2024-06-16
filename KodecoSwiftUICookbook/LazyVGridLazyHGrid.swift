//
//  LazyVGridLazyHGrid.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/16/24.
//

import SwiftUI

struct LazyVGridView: View {
    var body: some View {
        // Define your grid layout first.
        let columns = [
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
        // LazyVGrid
        LazyVGrid(columns: columns, spacing: 20) {
            ForEach(0..<10) { index in
                Text("Item: \(index)")
                    .padding()
                    .background(Color.cyan)
                    .cornerRadius(10)
            }
        }
    }
}

struct LazyHGridView: View {
    
    var body: some View {
        // Define your grid layout first.
        let rows = [
            GridItem(.fixed(100)),
            GridItem(.flexible())
        ]
        // Create a LazyHGrid
        LazyHGrid(rows: rows, spacing: 20) {
            ForEach(0..<10) { index in
                
                Text("Item: \(index)")
                    .padding()
                    .background(Color.mint)
                    .cornerRadius(10)
            }
        }
    }
}


#Preview {
//    LazyVGridView()
    LazyHGridView()
}
