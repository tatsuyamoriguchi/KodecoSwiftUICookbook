//
//  ControlInteractionwithViewBehindModal.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/30/24.
//

import SwiftUI

struct ControlInteractionwithViewBehindModal: View {
    @State private var showModal = false
    @State private var hueValue = 0.5
    
    var body: some View {
        VStack {
            Color(hue: hueValue, saturation: 0.5, brightness: 1.0)
                .frame(width: 200, height: 200)
                .cornerRadius(10)
                .padding()
            
            Slider(value: $hueValue, in: 0...1)
                .padding()
            Button("Show Joke") {
                showModal = true
                
            }
            .sheet(isPresented: $showModal) {
                VStack{
                    Text("Why don't scientists trust atoms?")
                    Text("Because they make up everything.")
                }
                .presentationDetents([.height(120), .medium, .large])
                .presentationBackgroundInteraction(.enabled(upThrough: .height(120)))
                .presentationBackground {
                    Color.orange.opacity(0.8)
                }
            }
                
        }
    }
}

#Preview {
    ControlInteractionwithViewBehindModal()
}
