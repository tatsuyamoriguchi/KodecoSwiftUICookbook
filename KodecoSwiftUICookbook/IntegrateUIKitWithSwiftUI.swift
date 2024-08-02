//
//  IntegrateUIKitWithSwiftUI.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/22/24.
//

import SwiftUI

struct IntegrateUIKitWithSwiftUI: View {
    @State private var red: Float = 0.5
      @State private var green: Float = 0.5
      @State private var blue: Float = 0.5

      var body: some View {
        VStack {
          Color(red: Double(red), green: Double(green), blue: Double(blue))
            .frame(height: 100)
            .cornerRadius(10)
            .padding()

          SliderView(title: "Red", value: $red)
          SliderView(title: "Green", value: $green)
          SliderView(title: "Blue", value: $blue)
        }
      }
}


#Preview {
    IntegrateUIKitWithSwiftUI()
}
