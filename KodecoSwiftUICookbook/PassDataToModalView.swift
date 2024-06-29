//
//  PassDataToModalView.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/29/24.
//

import SwiftUI

struct Product {
    let name: String
    let price: Int
}

extension Product: Identifiable {
    var id: String { name }
}

struct ProductDetailView: View {
    let product: Product
    
    var body: some View {
        VStack {
            Text(product.name)
                .font(.title)
            Text("Price: \(product.price)")
        }
    }
}

struct PassDataToModalView: View {
    let products = [
        Product(name: "MacBook Pro", price: 1299),
        Product(name: "iPhone", price: 999),
        Product(name: "AirPods", price: 199)
    ]
    
    @State private var selectedProduct: Product?
    
    var body: some View {
        
        List(products) { product in
            Text(product.name)
                .onTapGesture {
                    selectedProduct = product
                }
        }
        .sheet(item: $selectedProduct, content: { product in
            ProductDetailView(product: product)
        })
        
    }
}

#Preview {
    PassDataToModalView()
}
