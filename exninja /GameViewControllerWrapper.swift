//
//  GameViewControllerWrapper.swift
//  A5Interface
//
//  Created by Vittoria Frau on 03/12/2024.
//

//creating a Wrapper to make the SKscene talk together with view
import SwiftUI
import UIKit
import SpriteKit

struct GameViewControllerWrapper: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> GameViewController {
        return GameViewController()
    }

    func updateUIViewController(_ uiViewController: GameViewController, context: Context) {
        // Leave empty unless you need to update the controller
    }
}
