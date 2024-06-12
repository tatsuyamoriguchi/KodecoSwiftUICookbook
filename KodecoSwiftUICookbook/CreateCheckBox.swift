//
//  CreateCheckBox.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/11/24.
//

import SwiftUI

struct CreateCheckBox: View {
    // 1. Create a state variable that will hold the state of our checkbox.
    @State private var isChecked: Bool = false
    
    var body: some View {
        // 2. Create a VStack to hold our Toggle view.
        VStack {
            // 3. Create a Toggle view.
            Toggle(isOn: $isChecked) {
                // 4. Add a label for the toggle.
                Text("I agree to the term and conditions.")
                let _ = print("isChecked: \(isChecked)")
            }
            // 5. Add stylng to make it look a checkbox.
            .toggleStyle(CheckboxToggleStyle())
            .padding()
        }
    }
    
}

struct CheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                .resizable()
                .frame(width: 24, height: 24)
                .onTapGesture {
                    configuration.isOn.toggle()
                }
                .padding()
            configuration.label

        }
    }
}

#Preview {
    CreateCheckBox()
}
