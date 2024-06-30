//
//  CustomBackgroundForModal.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/30/24.
//

import SwiftUI

struct CustomBackgroundForModal: View {
    @State private var showModal = false
    
    let iceCreamFlavors = [
        "Vanilla",
        "Chocolate",
        "Strawberry",
        "Mint Chocolate Chip",
        "Cookies and Cream",
        "Butter Pecan",
        "Pistachio",
        "Neapolitan",
        "Rocky Road",
        "Cookie Dough"
    ]
    
    var body: some View {
        Button("Show Ice Cream Flavors") {
            showModal = true
        }
        .sheet(isPresented: $showModal) {
            VStack {
                ScrollView(showsIndicators: false) {
                    ForEach(iceCreamFlavors, id: \.self) { flavor in
                        Text(flavor)
                            .font(.title)
                            .padding()
                            .background(Color.white.opacity(0.5))
                            .cornerRadius(10)
                            .padding(.bottom, 10)
                    }
                }
            }
            .padding()
            .presentationBackground {
                LinearGradient(gradient: Gradient(colors: [.pink, .orange, .purple]), startPoint: .top, endPoint: .bottom)
            }
        }
    
    }
}

#Preview {
    CustomBackgroundForModal()
}
