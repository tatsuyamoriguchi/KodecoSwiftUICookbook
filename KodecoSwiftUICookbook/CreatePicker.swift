//
//  CreatePicker.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/11/24.
//

import SwiftUI

struct CreatePicker: View {
    
    let options = [
    "Frida Kahlo",
    "Gerogia O'Keeffe",
    "Marry Cassart",
    "Lee Krasner",
    "Helen Frankenthaler"
    ]
    
    @State private var selectedOption = 0
    
    var body: some View {
        HStack {
            Image(systemName: "paintpalette")
                .foregroundColor(.blue)
                .padding(.trailing, 4)
            Text("Favorite Artists: ")
                .font(.title)
            Text(options[selectedOption])
                .font(.title)
                .padding(.leading, 4)

        }
        .padding()
        
        Picker("Options", selection: $selectedOption) {
            ForEach(options.indices, id: \.self) { index in
            Text(options[index])
                    .font(.headline)
            }
        }
        .pickerStyle(.wheel)
        .padding()
    }
}

#Preview {
    CreatePicker()
}
