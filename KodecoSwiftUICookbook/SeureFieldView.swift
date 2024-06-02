//
//  SeureField.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 5/31/24.
//

import SwiftUI

struct SeureField: View {
    @State private var password = ""
    
    var body: some View {
        SecureField
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SeureField()
}
