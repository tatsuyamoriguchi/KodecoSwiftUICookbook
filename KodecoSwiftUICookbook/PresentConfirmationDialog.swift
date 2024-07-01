//
//  PresentConfirmationDialog.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/1/24.
//

import SwiftUI

struct PresentConfirmationDialog: View {
    @State private var isShowingDialog = false
    
    var body: some View {
        Button("Empty Trach") {
            isShowingDialog = true
            
        }
        .confirmationDialog("Are you sure you want to empty the trash?", isPresented: $isShowingDialog, titleVisibility:.visible) {
            Button("Empty Trach", role: .destructive) {
                // Handle empty trach action.
            }
            Button("Cancel", role: .cancel) {
                isShowingDialog = false
            }
        }
    }
}

#Preview {
    PresentConfirmationDialog()
}
