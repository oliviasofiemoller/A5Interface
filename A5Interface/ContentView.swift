//
//  ContentView.swift
//  A5Interface
//
//  Created by Olivia Sofie Møller on 26/11/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack {
            ZStack{
                // Background color with safe area ignored
                Color(red: 239 / 255, green: 238 / 255, blue: 236 / 255)
                    .ignoresSafeArea(edges: .all) // Ensures the color fills the entire screen
                
                
                VStack {
                    Spacer()
                    
                    Image("Logo")
                        .resizable()
                        .frame(width: 270, height: 270)
                        .foregroundStyle(.tint)
                    
                    
                    StrokeTextView(text: "Heart-Aid", width: 1, color: Color( red: 56 / 255, green: 78 / 255, blue: 113 / 255))
                        .foregroundColor(Color( red: 235 / 255, green: 198 / 255, blue: 187 / 255))
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Spacer()
                    // Buttons
                    VStack(spacing: 20) {
                        NavigationLink(destination: Page2View()) {
                            //Button(action: {
                            // Add sign-in action
                            
                            Text("Sign in")
                                .font(.system(size: 18, weight: .medium))
                                .frame(width: 85, height: 10)
                                .padding()
                                .background(Color(red: 160 / 255, green: 201 / 255, blue: 231 / 255))
                                .foregroundColor(Color( red: 56 / 255, green: 78 / 255, blue: 113 / 255))
                                .cornerRadius(8)
                        }
                        .padding(.horizontal, 40)
                        
                        NavigationLink(destination: Page2View()){
                            // Button(action: {
                            // Add login action
                            
                            Text("Login")
                                .font(.system(size: 18, weight: .medium))
                                .frame(width: 85, height: 10)
                                .padding()
                                .background(Color(red: 160 / 255, green: 201 / 255, blue: 231 / 255))
                                .foregroundColor(Color( red: 56 / 255, green: 78 / 255, blue: 113 / 255))
                                .cornerRadius(8)
                            
                            
                        }
                    }
                    
                    
                    .padding(.horizontal, 40)
                    Spacer()
                    
                    
                }
                
                
            }
        }
    }
}
    

#Preview {
    ContentView()
    
}

struct StrokeTextView: View {
    var text: String
    var width: CGFloat // number with comma
    var color: Color
    var body: some View {
        ZStack {
            ZStack {
                Text(text).offset(x: width, y: width)
                Text(text).offset(x: -width, y: -width)
                Text(text).offset(x: -width, y: width)
                Text(text).offset(x: width, y: -width)
            }
            .foregroundColor(color)
            Text(text)
        }
    }
}

