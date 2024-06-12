//
//  CreateColorPicker.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/12/24.
//

import SwiftUI

struct CreateColorPicker: View {
    @State private var colorChoice = Color.white
    
    var body: some View {
        VStack {
            ColorPicker("Choose your color", selection: $colorChoice)
                .padding()
            Text("Your Chose: ")
                .font(.title)
            Rectangle()
                .fill(colorChoice)
                .frame(width: 100, height: 100)
                .border(.cyan)
                .padding()
        }
    }
}

#Preview {
    CreateColorPicker()
}
