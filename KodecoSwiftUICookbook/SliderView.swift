//
//  SliderView.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/22/24.
//

import SwiftUI

struct SliderView: View {
    let title: String
    @Binding var value: Float
    
    var body: some View {
        HStack {
            Text(title)
            UIKitSlider(value: $value)
        }
        .padding()
    }
}



struct SliderView_Previews: PreviewProvider {
    @State static var value: Float = 0.5
    
    static var previews: some View {
        SliderView(title: "Volume", value: $value)
    }
}
