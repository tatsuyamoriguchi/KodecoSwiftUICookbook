//
//  CreateAlert.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/1/24.
//

import SwiftUI

struct CreateAlert: View {
    @State private var showAlert = false
    
    var body: some View {
        Button("Show Alert") {
            showAlert = true
        }
        .alert(
            "Imporant Message",
            isPresented: $showAlert,
            actions: {
                Button("Ok") {
                    // Handle the acknowledgement
                    showAlert = false
                }
            },
            message: {
                Text("This is a important message.")
            }
        )
        Button("Show Another") {
            showAlert = true
        }
        .alert("Another Alert", isPresented: $showAlert) {
            Button("Ok") {
                showAlert = false
            }
        } message: {
            Text("This is another important message.")
        }

    }
}

#Preview {
    CreateAlert()
}
