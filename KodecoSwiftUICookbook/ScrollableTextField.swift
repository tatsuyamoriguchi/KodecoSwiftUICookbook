//
//  ScrollableTextField.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/26/24.
//

import SwiftUI

struct ScrollableTextField: View {
    @State private var text = "A long string of text that goes on and on and on and on and on and on and on and on...A long string of text that goes on and on and on and on and on and on and on and on...A long string of text that goes on and on and on and on and on and on and on and on...A long string of text that goes on and on and on and on and on and on and on and on...A long string of text that goes on and on and on and on and on and on and on and on...A long string of text that goes on and on and on and on and on and on and on and on...A long string of text that goes on and on and on and on and on and on and on and on...A long string of text that goes on and on and on and on and on and on and on and on...A long string of text that goes on and on and on and on and on and on and on and on...A long string of text that goes on and on and on and on and on and on and on and on... A long string of text that goes on and on and on and on and on and on and on and on..."
    
    var body: some View {
        TextField("Enter text here.", text: $text, axis: .vertical)
            .padding()
    }
}

#Preview {
    ScrollableTextField()
}
