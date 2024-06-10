//
//  AdvancedButtonStyling.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/9/24.
//

import SwiftUI

struct AdvancedButtonStyling: View {
    @State private var isPressed = false //1
    var body: some View {
        VStack {
            Button(action: {
                isPressed.toggle() //2
            }) {
                Text("3D Button") //3
            }
            .font(.title) //4
            .frame(width: 200, height: 50)  //5
            .background( //6
                ZStack {
                    Color(isPressed ? .gray : .blue) //7
                    
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .foregroundColor(.white)
                        .blur(radius: 4)
                        .offset(x: -8, y: -8)
                    
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [.white, Color(.white).opacity(0.5)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                        .padding(2)
                        .blur(radius: 2)
                }
            )
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous)) //8
            .shadow(color: Color(isPressed ? .blue : .gray).opacity(0.3), radius: 20, x: 20, y: 20) //9
            .scaleEffect(isPressed ? 0.95 : 1) //10
            .animation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 1), value: isPressed) //11
            .foregroundColor(isPressed ? .blue : .white) // 12
            
        
        }
    }
}

#Preview {
    AdvancedButtonStyling()
}
