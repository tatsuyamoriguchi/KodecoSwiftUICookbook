//
//  RecordingAudioVideo.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/2/24.
//

import SwiftUI
import AVFoundation
import Photos

struct CameraPreview: UIViewRepresentable {
    @Binding var session: AVCaptureSession
    
    func makeUIView(context: Context) -> some UIView {
        let view = UIView()
        let previewLayer = AVCaptureVideoPreviewLayer(session: session)
        previewLayer.videoGravity = .resizeAspectFill
        view.layer.addSublayer(previewLayer)
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        if let layer = uiView.layer.sublayers?.first as? AVCaptureVideoPreviewLayer {
            layer.session = session
            layer.frame = uiView.bounds
        }
    }
}

struct RecordingAudioVideo: View {
    @StateObject private var recorder = Recorder()
    
    var body: some View {
        VStack {
            CameraPreview(session: $recorder.session)
                .frame(height: 400)
            HStack {
                Button(action: {
                    recorder.startRecording()
                }, label: {
                    Text("Start Recording")
                        .padding()
                        .background(Color.blue)
                        .foregroundStyle(Color.white)
                        .cornerRadius(8)
                })
                .disabled(recorder.isRecording)
                
                Button(action: {
                    recorder.stopRecording()
                }, label: {
                    Text("Stop Recording")
                        .padding()
                        .background(Color.red)
                        .foregroundStyle(Color.white)
                        .cornerRadius(8)
                })
                .disabled(!recorder.isRecording)

            }
            if recorder.isRecording {
                Text("Recording...")
                    .foregroundStyle(Color.red)
            }
        }
    }
}

class Recorder: NSObject, AVCaptureFileOutputRecordingDelegate, ObservableObject {

    
    @Published var session = AVCaptureSession()
    @Published var isRecording = false
    private let movieOutput = AVCaptureMovieFileOutput()
    
    override init() {
        super.init()
        addAudioInput()
        addVideoInput()
        if session.canAddOutput(movieOutput) {
            session.addOutput(movieOutput)
        }
        DispatchQueue.global(qos: .userInitiated).async { [weak self] in
            self?.session.startRunning()
        }
    }
    
    private func addAudioInput() {
        guard let device = AVCaptureDevice.default(for: .audio) else { return }
        guard let input = try? AVCaptureDeviceInput(device: device) else { return }
        
        if session.canAddInput(input) {
            session.addInput(input)
        }
    }
    
    private func addVideoInput() {
        guard let device = AVCaptureDevice.default(for: .video) else { return }
        guard let input = try? AVCaptureDeviceInput(device: device) else { return }
        if session.canAddInput(input) {
            session.addInput(input)
        }
    }
    
    func startRecording() {
        guard let url = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first?.appendingPathComponent("video.mp4") else { return }
        if movieOutput.isRecording == false {
            if FileManager.default.fileExists(atPath: url.path) {
                try? FileManager.default.removeItem(at: url)
            }
            movieOutput.startRecording(to: url, recordingDelegate: self)
            isRecording = true
        }
    }
    
    func stopRecording() {
        if movieOutput.isRecording {
            movieOutput.stopRecording()
            isRecording = false
        }
    }
    
    func fileOutput(_ output: AVCaptureFileOutput, didStartRecordingTo fileURL: URL, from connections: [AVCaptureConnection]) {
        // Handle actions when recording starts.
    }

    func fileOutput(_ output: AVCaptureFileOutput, didFinishRecordingTo outputFileURL: URL, from connections: [AVCaptureConnection], error: Error?) {
        // Check for recording error.
        if let error = error {
            print("Error recording: \(error.localizedDescription)")
            return
        }
        
        // Save video to Photos
        PHPhotoLibrary.shared().performChanges({
            PHAssetChangeRequest.creationRequestForAssetFromVideo(atFileURL: outputFileURL)
        }) { saved, error in
            if saved {
                print("Successfully saved video to Photos.")
            } else if let error = error {
                print("Error saving video to Photos: \(error.localizedDescription)")
            }
        }
    }
}

#Preview {
    RecordingAudioVideo()
}
