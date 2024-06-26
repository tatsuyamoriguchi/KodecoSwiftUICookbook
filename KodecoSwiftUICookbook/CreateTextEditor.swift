//
//  CreateTextEditor.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/26/24.
//

import SwiftUI

struct CreateTextEditor: View {
    @State private var enteredText = "Type something...."
    
    var body: some View {
        TextEditor(text: $enteredText)
            .padding()
            .font(.title)
            .foregroundColor(.gray)
    }
}

#Preview {
    CreateTextEditor()
}
