//
//  SecureFieldTextInput.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/28/24.
//

import SwiftUI

struct SecureFieldTextInput: View {
    @State private var password = ""
    
    var body: some View {
        SecureField("Password", text: $password)
            .textFieldStyle(.roundedBorder)
            .padding()
            .cornerRadius(10)
            .shadow(radius: 10)
            .padding()
            .frame(width: 300)
            .padding(.bottom, 50)
    }
}

#Preview {
    SecureFieldTextInput()
}
