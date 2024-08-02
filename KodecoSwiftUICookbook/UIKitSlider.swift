//
//  UIKitSlider.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/22/24.
//

import SwiftUI
import UIKit

struct UIKitSlider: UIViewRepresentable {

    @Binding var value: Float
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider()
        slider.addTarget(context.coordinator, action: #selector(Coordinator.valueChanged(_:)), for: .valueChanged)
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.value = value
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(value: $value)
    }

    
    class Coordinator: NSObject {
        var value: Binding<Float>
        
        init(value: Binding<Float>) {
            self.value = value
        }
        
        @objc func valueChanged(_ sender: UISlider) {
            self.value.wrappedValue = sender.value
        }
    }
}

