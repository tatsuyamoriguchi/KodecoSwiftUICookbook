//
//  SeureFieldView.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 5/31/24.
//

import SwiftUI

struct SeureFieldView: View {
    @State private var password = ""
    
    var body: some View {
        SecureField("Enter your password", text: $password)
            .textContentType(.password)
            .padding()
            .background(RoundedRectangle(cornerRadius: 5).stroke())
            .multilineTextAlignment(.center)
        
    }
}

#Preview {
    SeureFieldView()
}
