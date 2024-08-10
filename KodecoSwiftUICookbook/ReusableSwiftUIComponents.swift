//
//  ReusableSwiftUIComponents.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 8/10/24.
//

import SwiftUI
struct CustomButton: View {
    let text: String
    
    var body: some View {
        Button {
            print("\(text) button was tapped.")
        } label: {
            Text(text)
                .foregroundStyle(Color.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
        }

    }
}

struct ReusableSwiftUIComponents: View {
    
    var body: some View {
        VStack {
            CustomButton(text: "Sign In")
            CustomButton(text: "Create Account")
        }
    }
}

#Preview {
    ReusableSwiftUIComponents()
}
