//
//  AddStepper.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/11/24.
//

import SwiftUI

struct AddStepper: View {
    @State private var quantity: Int = 1
    
    var body: some View {
        VStack(spacing: 10) {
            Text("How many packets of magic beans?")
            Stepper(value: $quantity, in: 1...10) {
                Text("\(quantity)")
            }
            .padding(.horizontal, 100)
        }
        .padding(30)
    }
}

#Preview {
    AddStepper()
}
