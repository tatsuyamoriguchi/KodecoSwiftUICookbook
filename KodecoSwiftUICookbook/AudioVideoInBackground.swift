//
//  AudioVideoInBackground.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/2/24.
//

import SwiftUI
import AVKit





struct AVPlayerView: UIViewControllerRepresentable {
    var videoURL = URL(string: "https://archive.org/download/ksnn_compilation_master_food_in_space/ksnn_compilation_master_food_in_space_512kb.mp4")!
    
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let controller = AVPlayerViewController()
        let player = AVPlayer(url: videoURL)
        controller.player = player
        controller.player?.play()
        controller.allowsPictureInPicturePlayback = true
        return controller
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        // why blank here???
    }
    
}

struct AudioVideoInBackground: View {
    var body: some View {
        AVPlayerView()
    }
}


#Preview {
    AudioVideoInBackground()
}
