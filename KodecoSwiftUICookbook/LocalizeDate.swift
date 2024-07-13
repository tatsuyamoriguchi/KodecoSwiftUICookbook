//
//  LocalizeDate.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/13/24.
//

import SwiftUI

struct LocalizeDate: View {
    let now = Date()
    let languages = ["en","fr", "es", "de", "ja"]
    @State private var selectedLanguage = "en"
    
    var body: some View {
        VStack {
            Picker("Langage", selection: $selectedLanguage) {
                ForEach(languages, id: \.self) { language in
                    Text(language.uppercased()).tag(language)
                    
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            HStack {
                Text(now, style: .date)
                Spacer()
                Text(now, style: .time)
            }
            .environment(\.locale, Locale(identifier: selectedLanguage))
            .padding()
            
        }
    }
}

#Preview {
    LocalizeDate()
}
