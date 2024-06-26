//
//  CreateATextField.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/26/24.
//

import SwiftUI

struct CreateATextField: View {
    @State private var textFieldInput = ""
    
    var body: some View {
        TextField("Enter Text here.", text: $textFieldInput)
            .textFieldStyle(.roundedBorder)
            .padding()
            .font(.headline)
        Text("You entered: \(textFieldInput)")
    }
}

#Preview {
    CreateATextField()
}
