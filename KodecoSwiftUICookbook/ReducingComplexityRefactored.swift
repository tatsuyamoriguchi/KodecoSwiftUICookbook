//
//  ReducingComplexityRefactored.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 8/9/24.
//

import SwiftUI

class ProductViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var description: String = ""
    @Published var inCart: Bool = false
    
    func toggleCartStatus() {
        inCart.toggle()
    }
}


struct ProductTextFieldView: View {
    @Binding var text: String
    let placeholder: String
    
    var body: some View {
        TextField(placeholder, text: $text)
            .font(.subheadline)
            .foregroundColor(.secondary)
    }
}

struct ProductButtonView: View {
    @Binding var inCart: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(inCart ? "Remove from Cart" : "Add to Cart")
        }
    }
}

struct ProductView: View {
    @ObservedObject var product: ProductViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Product Name:")
                .font(.headline)
                .foregroundColor(.primary)
            ProductTextFieldView(text: $product.name, placeholder: "Enter product name")
            
            Text("Product Description:")
                .font(.headline)
                .foregroundColor(.primary)
            ProductTextFieldView(text: $product.description, placeholder: "Enter product description")
            
            ProductButtonView(inCart: $product.inCart, action: product.toggleCartStatus)
        }
        .padding()
    }
}

struct ReducingComplexityRefactored: View {
    
    @StateObject var product = ProductViewModel()
    
    var body: some View {
        ProductView(product: product)
    }
}



#Preview {
    ReducingComplexityRefactored()
}
