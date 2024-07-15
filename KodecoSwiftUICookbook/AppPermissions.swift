//
//  AppPermissions.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/15/24.
//

import SwiftUI
import Photos

struct AppPermissions: View {
    var body: some View {
        Button("Request Photo Library Permission") {
              requestPhotoLibraryAccess()
            }
    }
    
    
    private func requestPhotoLibraryAccess() {
        let status = PHPhotoLibrary.authorizationStatus()
        
        switch status {
        case .notDetermined:
            PHPhotoLibrary.requestAuthorization { newStatus in
                if newStatus == .authorized {
                    print("Access granted")
                } else {
                    print("Access denied")
                }
            }
            
        case .restricted, .denied:
            print("Access denied or restricted.")
        case .authorized:
            print("Access already authorized.")
        case .limited:
            print("Access limited.")
        @unknown default:
            print("Unknown authorization status.")
        }
    }
}

#Preview {
    AppPermissions()
}
