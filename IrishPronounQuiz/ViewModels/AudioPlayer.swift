// AudioPlayer.swift

import Foundation
import AVFoundation
import SwiftUI

class AudioPlayer: NSObject, ObservableObject, AVAudioPlayerDelegate {
    var audioPlayer: AVAudioPlayer?
    @Published var isPlaying: Bool = false
    @Published var errorMessage: String? = nil

    override init() {
        super.init()
        configureAudioSession()
        setupInterruptionHandling()
    }

    /// Plays audio from a specified subdirectory and resource name.
    /// - Parameters:
    ///   - subdirectory: The subdirectory within the main bundle (e.g., "Ulster").
    ///   - resourceName: The name of the audio file without extension (e.g., "faoi_fúm").
    ///   - ext: The file extension (default is "mp3").
    func playAudio(subdirectory: String, resourceName: String, withExtension ext: String = "mp3") {
        // Construct the full subdirectory path
        let fullSubdirectory = "Audio/\(subdirectory)"
        
        // Attempt to locate the audio file within the specified subdirectory
        guard let url = Bundle.main.url(forResource: resourceName, withExtension: ext, subdirectory: fullSubdirectory) else {
            DispatchQueue.main.async {
                self.errorMessage = "Audio file \(fullSubdirectory)/\(resourceName).\(ext) not found."
            }
            return
        }

        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.delegate = self
            audioPlayer?.prepareToPlay()
            audioPlayer?.play()
            isPlaying = true
        } catch {
            DispatchQueue.main.async {
                self.errorMessage = "Failed to play audio: \(error.localizedDescription)"
            }
        }
    }

    func stop() {
        audioPlayer?.stop()
        isPlaying = false
    }

    // MARK: - AVAudioPlayerDelegate Methods

    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        DispatchQueue.main.async {
            self.isPlaying = false
        }
    }

    func audioPlayerDecodeErrorDidOccur(_ player: AVAudioPlayer, error: Error?) {
        if let error = error {
            DispatchQueue.main.async {
                self.errorMessage = "Audio decode error: \(error.localizedDescription)"
                self.isPlaying = false
            }
        }
    }

    // MARK: - Audio Session Configuration

    private func configureAudioSession() {
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
        } catch {
            DispatchQueue.main.async {
                self.errorMessage = "Failed to configure audio session: \(error.localizedDescription)"
            }
        }
    }

    // MARK: - Audio Session Interruption Handling

    private func setupInterruptionHandling() {
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(handleInterruption),
                                               name: AVAudioSession.interruptionNotification,
                                               object: AVAudioSession.sharedInstance())
    }

    @objc private func handleInterruption(notification: Notification) {
        guard let userInfo = notification.userInfo,
              let typeValue = userInfo[AVAudioSessionInterruptionTypeKey] as? UInt,
              let type = AVAudioSession.InterruptionType(rawValue: typeValue) else {
            return
        }

        if type == .began {
            // Interruption began, pause playback
            audioPlayer?.pause()
            DispatchQueue.main.async {
                self.isPlaying = false
            }
        } else if type == .ended {
            // Interruption ended, optionally resume playback
            if let optionsValue = userInfo[AVAudioSessionInterruptionOptionKey] as? UInt {
                let options = AVAudioSession.InterruptionOptions(rawValue: optionsValue)
                if options.contains(.shouldResume) {
                    audioPlayer?.play()
                    DispatchQueue.main.async {
                        self.isPlaying = true
                    }
                }
            }
        }
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
