//
//  AnimatedVisualizationsForAudioVideo.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/3/24.
//

import SwiftUI
import AVKit


struct AnimatedVisualizer: Shape {
    let audioSamples: [CGFloat]
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let height = rect.height
        let width = rect.width / CGFloat(audioSamples.count)
        
        for i in 0 ..< audioSamples.count {
            let x = width * CGFloat(i)
            let y = CGFloat(audioSamples[i]) * height
            
            path.addRect(CGRect(x: x, y: 0, width: width, height: y))
        }
        
        return path
    }
    
    
}

struct AnimatedVisualizationsForAudioVideo: View {
    @State private var audioSamples: [CGFloat] = [0.2, 0.5, 0.8, 0.3, 0.6, 0.9, 0.4, 0.4, 0.4, 0.4]
                                                  
    var body: some View {
        ZStack {
            AnimatedVisualizer(audioSamples: audioSamples)
                .fill(Color.red)
                .opacity(0.8)
                .animation(Animation.easeInOut(duration: 0.2).repeatForever(autoreverses: true), value: audioSamples)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .onAppear {            
            Timer.scheduledTimer(withTimeInterval: 0.2, repeats: true) { timer in
                self.audioSamples = self.generateAudioSamples()
            }
            
        }
    }
    
    func generateAudioSamples() -> [CGFloat] {
        var samples: [CGFloat] = []
        for _ in 0...10 {
            samples.append(CGFloat.random(in: 0...1))
        }
        return samples
    }
}

#Preview {
    AnimatedVisualizationsForAudioVideo()
}
