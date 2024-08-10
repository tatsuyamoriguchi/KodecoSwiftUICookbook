//
//  ReducingComplexity.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 8/9/24.
//

import SwiftUI

struct ReducingComplexity: View {
    @State private var name = ""
    @State private var description = ""
    @State private var inCart = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Product Name:")
                .font(.headline)
                .foregroundColor(.primary)
            TextField("Enter product name", text: $name)
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            Text("Product Description:")
                .font(.headline)
                .foregroundColor(.primary)
            TextField("Enter product description", text: $description)
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            Button(action: {
                inCart.toggle()
            }) {
                Text(inCart ? "Remove from Cart" : "Add to Cart")
            }
        }
        .padding()
    }
}


#Preview {
    ReducingComplexity()
}
