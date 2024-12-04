//
//  Page3.swift
//  A5Interface
//
//  Created by Olivia Sofie Møller on 26/11/2024.
//
import SwiftUI
import UIKit
import SpriteKit

struct CircleIcon: View {
    let imageName: String
    let label: String
    
    
    var body: some View {
            ZStack {
                Circle()
                    .frame(width: 160, height: 160)
                    .foregroundColor(Color(red: 236 / 255, green: 198 / 255, blue: 187 / 255))
                
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .accessibilityLabel(label)
            }
        }
    }
    
struct Page3View: View {
    var body: some View {
        
        NavigationView{
            ZStack {
                Color(red: 239 / 255, green: 238 / 255, blue: 236 / 255)
                    .ignoresSafeArea()
                
                
                VStack {
                    Spacer(minLength: -5)
                    Text("Let out your anger!")
                        .font(.system(size: 35, weight: .bold))
                        .foregroundColor(Color(red: 56 / 255, green: 78 / 255, blue: 113 / 255))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom, 5)
                    
                    Text("Pick the fire icon to burn photos of your ex or click the ninja icon to play Ex-Ninja")
                        .font(.system(size: 22, weight: .medium))
                        .foregroundColor(Color(red: 56 / 255, green: 78 / 255, blue: 113 / 255))
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 70)
                    
                    // Buttons
                    VStack(spacing: 50) {
                       // Button(action: {
                        NavigationLink(destination: ViewControllerWrapper()) {
                            CircleIcon(imageName: "flame", label: "Burn photo")
                        }
                        
                        //Button(action: {
                        NavigationLink(destination: GameViewControllerWrapper()){
                            CircleIcon(imageName: "ninja", label: "Play Ex-Ninja")
                        }
                    }
                    
                    
                    HStack{
                        Spacer()
                        // Journal Button
                        Button(action: {
                            print("Journal button tapped")
                        }) {
                            Image("journal")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70, height: 75)
                                .background(Color(red: 160 / 255, green: 201 / 255, blue: 231 / 255))
                                .clipShape(Rectangle())
                                .cornerRadius(8)
                                .position(x: 350, y:-240)
                        }
                        .padding()
                    }
                }
            }
        }
    }
}

        #Preview {
            Page3View()
            
        }
