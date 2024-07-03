//
//  HandlingErrorsExceptionsWhilePlayingAudioVideo.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/3/24.
//

import SwiftUI
import AVKit

struct HandlingErrorsExceptionsWhilePlayingAudioVideo: View {
    let player = AVPlayer(url: URL(string: "https://archive.org/download/lunchroom_manners/lunchroom_manners_512kb.mp4")!)
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    @State private var isPlaybackLikelyToKeepUp = true
    
    var body: some View {
        VStack {
            VideoPlayer(player: player)
            if !isPlaybackLikelyToKeepUp {
                Text("Playback Error: Network load is likely to prevent playback from keeping up.")
            }
        }
        .onReceive(timer, perform: { _ in
            isPlaybackLikelyToKeepUp = player.currentItem?.isPlaybackLikelyToKeepUp ?? true
        })
    }
}

#Preview {
    HandlingErrorsExceptionsWhilePlayingAudioVideo()
}
