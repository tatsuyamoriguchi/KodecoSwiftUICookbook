//
//  TestLocalizedApp.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/14/24.
//

import SwiftUI

struct TestLocalizedApp: View {
    @State private var number: Double = 1234.56
    
    var body: some View {
        VStack {
            Text("Your total is")
            Text("\(number, specifier: "%.2f")")
                .font(.title)
                .foregroundStyle(.green)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
        Group {
            TestLocalizedApp()
                .environment(\.locale, Locale(identifier: "en"))
                .previewDisplayName("English")
            TestLocalizedApp()
                .environment(\.locale, Locale(identifier: "fr"))
                .previewDisplayName("French")
            TestLocalizedApp()
                .environment(\.locale, Locale(identifier: "ar"))
                .previewDisplayName("Arabic")
        }
    }
}
