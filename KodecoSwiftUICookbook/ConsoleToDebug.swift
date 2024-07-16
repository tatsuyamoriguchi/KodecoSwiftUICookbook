//
//  ConsoleToDebug.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/16/24.
//

import SwiftUI
import os

struct ConsoleToDebug: View {
    @State private var showAlert = false
    let logger = Logger()
    
    
    var body: some View {
        Button("Show Alert") {
            logger.info("Button Tapped")
            showAlert = true
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Important Message"))
        }
    }
}

#Preview {
    ConsoleToDebug()
}
