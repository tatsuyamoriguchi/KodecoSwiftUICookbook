//
//  HandleErrorsWithAlert.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/1/24.
//

import SwiftUI

struct HandleErrorsWithAlert: View {
    @State var error: MyError
    @State private var showAlert = false
    
    var body: some View {
        Button("Trigger Error") {
            error = MyError.someError
            showAlert = true
        }
        .alert(isPresented: $showAlert, error: error) { _ in
            Button("Ok") {
                // Handle ackowledgement
                showAlert = true
            }
        } message: {  error in
            Text(error.recoverySuggestion ?? "Try again later.")
        }
    }
}

enum MyError: LocalizedError {
    case someError
    
    var errorDescription: String? {
        switch self {
        case .someError:
            return "Something went wrong."
        }
    }
    
    var recoverySuggestion: String? {
        switch self {
            case .someError:
            return "Please try again."
        }
    }

}

#Preview {
    HandleErrorsWithAlert(error: MyError.someError)
}
