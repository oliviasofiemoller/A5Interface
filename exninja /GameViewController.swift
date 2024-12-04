//
//  GameViewController.swift
//  Tap
//
//  Created by reyhan muhammad on 03/12/23.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    var myView:SKView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let newSKView = SKView()
        self.view.addSubview(newSKView)
        newSKView.frame = self.view.bounds //creating an object (which is an view), that will fit to the screen view.
        
        newSKView.translatesAutoresizingMaskIntoConstraints = false

        // Set up the constraints --> how it should fit inside the view screen --> leading = right - trailing = left.
        NSLayoutConstraint.activate([
            // Pin myView to the edges of the superview (view)
            newSKView.topAnchor.constraint(equalTo: view.topAnchor),
            newSKView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            newSKView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            newSKView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        myView = newSKView

        if let view = self.myView as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFit
                
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
