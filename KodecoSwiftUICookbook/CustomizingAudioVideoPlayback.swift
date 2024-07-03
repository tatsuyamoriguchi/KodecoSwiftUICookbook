//
//  CustomizingAudioVideoPlayback.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/2/24.
//

import SwiftUI
import AVKit

// What does UIViewControllerRepresentable do???-> Protocol, and Xcode suggests you to add stubs for conformance,typealias, func makeUIViewConroller(), and func updateUIViewController()
struct PlayerView: UIViewControllerRepresentable {
    
    // Why needs typealias here?
    typealias UIViewControllerType = AVPlayerViewController
    
    let player: AVPlayer
    
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let controller = AVPlayerViewController()
        controller.player = player
        return controller
    }
    
    // What is this, what does this do???
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        
    }

}

struct CustomizingAudioVideoPlayback: View {
    let player = AVPlayer(url: URL(string: "https://archive.org/download/FlightOfApollo7/flight_of_apollo_7_512kb.mp4")!)
    
    
    var body: some View {
        VStack {
            PlayerView(player: player)
            HStack(spacing: 20) {
                Button {
                    self.player.volume = max(self.player.volume - 0.1, 0.0)
                } label: {
                    Image(systemName: "speaker.fill")
                }
                Button {
                    self.player.volume = min(self.player.volume + 0.1, 1.0)
                } label: {
                    Image(systemName: "speaker.wave.3.fill")
                }
                Button {
                    self.player.play()
                } label: {
                    Image(systemName: "play.fill")
                }
                Button {
                    self.player.pause()
                } label: {
                    Image(systemName: "pause.fill")
                }
                Button {
                    self.player.rate += 0.1
                } label: {
                    Image(systemName: "slowmo")
                }
            }
            .font(.largeTitle)
            .padding()
        }
    }
}

#Preview {
    CustomizingAudioVideoPlayback()
}
