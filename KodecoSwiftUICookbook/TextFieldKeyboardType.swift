//
//  TextFieldKeyboardType.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 5/31/24.
//

import SwiftUI

struct TextFieldKeyboardType: View {
    @State private var cell = ""
    var body: some View {
        TextField("Enger our cell number", text: $cell)
            .multilineTextAlignment(.center)
            .keyboardType(.phonePad)
    }
}

struct SubmissionLabelView: View {
    @State private var name = ""
    var body: some View {
        TextField("Enter your name", text: $name)
            .keyboardType(.default)
            .submitLabel(.done)
            .onSubmit {
                print("Name entered: \(name)")
            }
    }
}

#Preview {
    SubmissionLabelView()
//    TextFieldKeyboardType()
}
