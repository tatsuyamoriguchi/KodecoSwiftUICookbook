//
//  FindAndReplaceToTextEditor.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/28/24.
//

import SwiftUI

struct FindAndReplaceToTextEditor: View {
    @State private var text = "This is some editable text...."
    @State private var isDisabled = false
    @State private var isPresented = false
    
    var body: some View {
        NavigationStack {
            TextEditor(text: $text)
                .findDisabled(isDisabled)
                .replaceDisabled(isDisabled)
                .findNavigator(isPresented: $isPresented)
                
                
                .navigationTitle("Text Editor")
                .toolbar {
                    Toggle(isOn: $isPresented) {
                        Label("Find", systemImage: "magnifyingglass")
                    }
                    
                }
        }
    }
}

#Preview {
    FindAndReplaceToTextEditor()
}
