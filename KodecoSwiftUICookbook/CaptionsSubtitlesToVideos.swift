//
//  CaptionsSubtitlesToVideos.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/3/24.
//

import SwiftUI
import AVKit

struct CaptionsSubtitlesToVideos: View {
    @State private var  player = AVPlayer(url: Bundle.main.url(forResource: "BookTrailer", withExtension: "m4v")!)
    @State var isPlaying: Bool = false
    @State var subtitleText: String = "Once upon a time, there was a programming book known as iOS Games..."
    
    var body: some View {
        ZStack {
            VideoPlayer(player: player) {
                VStack {
                    Spacer()
                    Text(subtitleText)
                        .font(.caption)
                        .foregroundStyle(Color.white)
                        .padding()
                        .background(Color.black.opacity(0.7))
                        .cornerRadius(10)
                }
            }
            .frame(width: 320, height: 180, alignment: .center)
            .onAppear {
                self.isPlaying = true
                player.play()
            }
        }
        Button {
            isPlaying ? player.pause() : player.play()
            isPlaying.toggle()
            player.seek(to: .zero)
            
        } label: {
            Image(systemName: isPlaying ? "stop" : "play")
                .padding()
        }
        
    }
}

#Preview {
    CaptionsSubtitlesToVideos()
}
