//
//  FormatTextInTextField.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/27/24.
//

import SwiftUI

struct FormatTextInTextField: View {
    @State private var name: String = ""
    @State private var email: String = ""
    
    var body: some View {
        VStack(spacing: 16, content: {
            TextField("Enter Full Name", text: $name)
                .autocapitalization(.words)
                .textContentType(.name)
                .padding()
            TextField("Enter Email Address", text: $email)
                .autocapitalization(.none)
                .keyboardType(.emailAddress)
                .textContentType(.emailAddress)
                .padding()
        })
        .padding()
    }
}

#Preview {
    FormatTextInTextField()
}
