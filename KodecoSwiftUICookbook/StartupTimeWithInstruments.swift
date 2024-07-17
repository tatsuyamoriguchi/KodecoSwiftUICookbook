//
//  StartupTimeWithInstruments.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/17/24.
//

import SwiftUI
class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {

      DispatchQueue.global().async {
          AnalyticsService.shared.longStartupTime()

      }

    return true
  }
}

class AnalyticsService {
  static let shared = AnalyticsService()
  private init() {}

  func longStartupTime() {
    sleep(10)
  }
}


struct StartupTimeWithInstruments: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    StartupTimeWithInstruments()
}
