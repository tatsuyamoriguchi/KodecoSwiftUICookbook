//
//  StyleTextField.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/27/24.
//

import SwiftUI

struct StyleTextField: View {
    @State private var inputText: String = ""
    
    var body: some View {
        TextField("Enter Text", text: $inputText)
            .font(.title)
            .foregroundColor(.purple)
            .padding()
            .background(.yellow.opacity(0.2))
//            .cornerRadius(10)
            .textFieldStyle(.roundedBorder)
    }
}

#Preview {
    StyleTextField()
}
