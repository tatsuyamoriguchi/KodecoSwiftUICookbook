//
//  CreateVideoPlayer.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/2/24.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    // Create a URL for the video file in your app bundle.
    let videoURL: URL? = Bundle.main.url(forResource: "BookTrailer", withExtension: "m4v")
    
    var body: some View {
        VStack {
            if let url = videoURL {
                VideoPlayer(player: AVPlayer(url: url))
            } else {
                Text("Video not found")
            }
        }
    }
}

// Isn't this redundant??? Why another layer of view?
struct CreateVideoPlayer: View {
    var body: some View {
        VideoPlayerView()
    }
}

#Preview {
    CreateVideoPlayer()
}
