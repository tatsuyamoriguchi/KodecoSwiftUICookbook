//
//  SegmentedControl.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/12/24.
//

import SwiftUI

struct SegmentedControl: View {
    @State private var selection = 0
    
    var body: some View {
        Picker(selection: $selection, label: Text("Picker")) {
            Text("Option 1").tag(0)
            Text("Option 2").tag(1)
            Text("Option 3").tag(2)
            let _ = print(selection)
        }
        .pickerStyle(SegmentedPickerStyle())
//        .pickerStyle(InlinePickerStyle())
//        .pickerStyle(MenuPickerStyle())
//        .pickerStyle(PalettePickerStyle())
//        .pickerStyle(NavigationLinkPickerStyle())
//        .pickerStyle(WheelPickerStyle())
//        .pickerStyle(DefaultPickerStyle())
    }
}

#Preview {
    SegmentedControl()
}
