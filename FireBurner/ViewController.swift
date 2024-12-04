//
//  ViewController.swift
//  FireEmitter
//
//  Created by Duncan Champney on 6/14/21.
//

import UIKit
import QuartzCore
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var viewToBurn: BurnItDownView!
    private var audioRecorder: AVAudioRecorder!
    private let soundThreshold: Float = -20 // Adjust sensitivity
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the background color of the view
        view.backgroundColor = UIColor(red: 0.937, green: 0.933, blue: 0.925, alpha: 1.0)
        
        // Create a UILabel for the title
        let titleLabel = UILabel()
        titleLabel.text = "Scream to burn picture"
        titleLabel.font = UIFont.boldSystemFont(ofSize: 42)
        titleLabel.textAlignment = .center
        titleLabel.textColor = UIColor(red: 56/255, green: 78/255, blue: 113/255, alpha: 1.0)
        titleLabel.numberOfLines = 0
        titleLabel.lineBreakMode = .byWordWrapping // Wrap text at word boundaries
               
        // Set the label's frame
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(titleLabel)
        
        // Add constraints to center the label at the top of the screen
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        setupAudioRecorder()
        startMonitoringSound()
    }
    
    // Set up the audio recorder with basic settings
    private func setupAudioRecorder() {
        let audioSession = AVAudioSession.sharedInstance()
        try? audioSession.setCategory(.record, mode: .measurement)
        try? audioSession.setActive(true)
        
        let tempFile = FileManager.default.temporaryDirectory.appendingPathComponent("temp.caf")
        let settings: [String: Any] = [
            AVFormatIDKey: Int(kAudioFormatAppleIMA4),
            AVSampleRateKey: 44100.0,
            AVNumberOfChannelsKey: 1
        ]
        audioRecorder = try? AVAudioRecorder(url: tempFile, settings: settings)
        audioRecorder?.isMeteringEnabled = true
    }
    
    // Start monitoring sound levels
    private func startMonitoringSound() {
        audioRecorder?.record()
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { [weak self] _ in
            self?.checkSoundLevel()
        }
    }
    
    // Check the sound level and trigger the burn animation
    private func checkSoundLevel() {
        guard let recorder = audioRecorder else { return }
        recorder.updateMeters()
        if recorder.averagePower(forChannel: 0) > soundThreshold {
            triggerBurnAnimation()
        }
    }
    
    // Trigger the burn animation
    private func triggerBurnAnimation() {
        viewToBurn.burnItDown() // Start the animation
    }
}
