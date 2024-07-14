//
//  KodecoSwiftUICookbookApp.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 5/12/24.
//

import SwiftUI
import AVKit

@main


// AppDelegate
//class AppDelegate: NSObject, UIApplicationDelegate {
//  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//    do {
//      try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default, options: [.mixWithOthers, .allowAirPlay])
//      print("Playback OK")
//      try AVAudioSession.sharedInstance().setActive(true)
//      print("Session is Active")
//    } catch {
//      print(error)
//    }
//    return true
//  }
//}

struct KodecoSwiftUICookbookApp: App {
//    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
//            ContentView()
            LocalizeAccessibilityLabelsAndHints()

        }
    }
}
