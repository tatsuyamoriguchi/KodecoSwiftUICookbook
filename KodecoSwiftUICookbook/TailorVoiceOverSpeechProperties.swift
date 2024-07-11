//
//  TailorVoiceOverSpeechProperties.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/11/24.
//

import SwiftUI

struct TailorVoiceOverSpeechProperties: View {
    var body: some View {
        Text("Hello, World! How are you today?")
            .font(.largeTitle)
            .speechAdjustedPitch(0.8)
            .speechAlwaysIncludesPunctuation(true)
            .speechAnnouncementsQueued(true)
            .speechSpellsOutCharacters(false)
    }
}

#Preview {
    TailorVoiceOverSpeechProperties()
}
