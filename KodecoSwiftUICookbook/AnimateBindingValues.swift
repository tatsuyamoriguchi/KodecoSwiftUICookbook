//
//  AnimateBindingValues.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/21/24.
//

import SwiftUI


struct AnimateBindingValues: View {
    
    @State private var selection = 0
    
    var body: some View {
        
        VStack {
            Text("Your Selection is: \(selection)")
                .font(.title)
            Picker("Choose a number", selection: $selection.animation()) {
                ForEach(0..<10) {
                    Text("\($0)")
                }
            }
            .pickerStyle(.wheel)
            .frame(width: 100, height: 200)
            
        }
    }
}


#Preview {
    AnimateBindingValues()
}
