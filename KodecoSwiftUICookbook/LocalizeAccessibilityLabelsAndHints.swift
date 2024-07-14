//
//  LocalizeAccessibilityLabelsAndHints.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/14/24.
//

import SwiftUI

struct LocalizeAccessibilityLabelsAndHints: View {
    @State private var selection = 0
    
    var body: some View {
        Picker(selection: $selection, label: Text("Picker")) {
            Text("Option 1").tag(0)
            Text("Option 2").tag(1)
            Text("Option 3").tag(2)
        }
        .accessibilityLabel(Text("Selection Picker", comment: "Accessibility label for picker"))
        .accessibilityHint(Text("Select an option", comment: "Accessibility hint for picker"))
    }
}

#Preview {
    LocalizeAccessibilityLabelsAndHints()
}
