//
//  CustomViewModifier.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 5/18/24.
//

import SwiftUI

struct CustomViewModifier: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .modifier(BoldAndItalicModifier())
    }
}

struct BoldAndItalicModifier: ViewModifier {
    
    func body(content: Content)-> some View {
        content
            .fontWeight(.bold)
            .italic()
    }
}

#Preview {
    CustomViewModifier()
}
