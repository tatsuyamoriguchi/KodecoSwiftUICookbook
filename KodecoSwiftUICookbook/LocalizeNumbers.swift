//
//  LocalizeNumbers.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/13/24.
//

import SwiftUI

struct LocalizeNumbers: View {
    let numberToLocalize: Double = 12345.67
    let locales = ["en", "fr", "de"]
    @State private var selectedLocaleIndex = 0
    
    var localizedNumber: String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.locale = Locale(identifier: locales[selectedLocaleIndex])
        return numberFormatter.string(from: NSNumber(value: numberToLocalize)) ?? ""
    }

    var body: some View {
        VStack(spacing: 20) {
            Text("Number: \(numberToLocalize)")
                .font(.title)
            Text("Localized: \(localizedNumber)")
                .font(.title)
            
            Picker("Locale", selection: $selectedLocaleIndex) {
                ForEach(0 ..< locales.count, id: \.self) {
                    Text(locales[$0])
                }
            }
            .pickerStyle(.segmented)
            .padding()
        }
        .padding()
    }
}

#Preview {
    LocalizeNumbers()
}
