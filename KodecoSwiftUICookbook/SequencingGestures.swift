//
//  SequencingGestures.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/24/24.
//

import SwiftUI

enum RotationState: Equatable {
    case inactive
    case pressing
    case rotating(angle: Angle)
    
    var angle: Angle {
        switch self {
            case .inactive, .pressing:
            return .zero
            
        case .rotating(let angle):
            return angle
            
        }
    }
    
    var isRotating: Bool {
        switch self {
        case .inactive, .pressing:
            return false
        case .rotating:
            return true
        }
    }
}

struct SequencingGestures: View {
    @GestureState private var rotationState = RotationState.inactive
    @State private var rotationAngle = Angle.zero
    
    var body: some View {
        let longPressBeforeRotation = LongPressGesture(minimumDuration: 0.5)
            .sequenced(before: RotationGesture())
            .updating($rotationState) { value, state, _ in
                switch value {
                    // Long press begins.
                case .first(true):
                    state = .pressing
                    // Long press confirmed, rotation begins.
                case .second(true, let rotation):
                    state = .rotating(angle: rotation ?? .zero)
                    // Rotation ended or long press cancelled.
                default:
                    state = .inactive
                }
            }
            .onEnded { value in
                guard case .second(true, let rotation?) = value  else {
                    return
                }
                self.rotationAngle = rotation
            }
        
        Image(systemName: "arrow.triangle.2.circlepath")
            .font(.system(size: 100))
            .rotationEffect(rotationState.angle + rotationAngle)
            .foregroundColor(rotationState.isRotating ? .blue : .red)
            .animation(.default, value: rotationState)
            .gesture(longPressBeforeRotation)
        
    }
}



#Preview {
    SequencingGestures()
}
