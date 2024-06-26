//
//  TextFieldWithOptional.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/26/24.
//

import SwiftUI

struct TextFieldWithOptional: View {
    @State private var name: PersonNameComponents? = nil
    
    var body: some View {
        VStack(spacing: 32) {
            Text("Input: \(String(describing: name))")
            TextField(
            "Enter Your Full Name",
            value: $name,
            format: .name(style: .medium)
            )
        }
        .padding()
    }
}

#Preview {
    TextFieldWithOptional()
}
