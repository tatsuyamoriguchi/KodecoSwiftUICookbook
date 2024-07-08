//
//  VoiceOver2.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/7/24.
//

import SwiftUI

struct VoiceOver2: View {
    @State private var isDarkMode = false
    
    var body: some View {
        VStack {        
            Button(action:  {
                isDarkMode.toggle()
            }) {
                Image(systemName: isDarkMode ? "sun.max.fill" : "moon.fill")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(isDarkMode ? Color.black : Color.white)
                    .foregroundStyle(isDarkMode ? Color.white : Color.black)
                    .cornerRadius(50)
                    .edgesIgnoringSafeArea(.all)
            }
            .accessibilityLabel(Text("Toggle dark mode. Currently, Dark Mode is \(isDarkMode ? "enabled" : "disabled")."))
                
        }
    }
}

#Preview {
    VoiceOver2()
}
