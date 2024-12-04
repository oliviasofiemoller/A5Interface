//
//  ViewControllerWrapper.swift
//  A5Interface
//
//  Created by Olivia Sofie Møller on 04/12/2024.
//

//creating a Wrapper to make a view that class the the view "ViewController"
import UIKit
import QuartzCore
import AVFoundation
import SwiftUI

struct ViewControllerWrapper: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> ViewController {
        return ViewController()
    }

    func updateUIViewController(_ uiViewController: ViewController, context: Context) {
        // Leave empty unless you need to update the controller
    }
}
/*import UIKit
import AVFoundation
import SwiftUI

struct ViewControllerWrapper: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> ViewController{
        return ViewController()
    }

    func updateUIViewController(_ uiViewController: ViewController, context: Context) {
        // Leave empty unless you need to update the controller
    }
}
*/
