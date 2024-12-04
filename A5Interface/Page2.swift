//
//  Page2.swift
//  A5Interface
//
//  Created by Olivia Sofie Møller on 26/11/2024.
//

import SwiftUI

struct Page2View: View {
    var body: some View {
        
        NavigationStack {
            ZStack{
                // Background color with safe area ignored
                Color(red: 239 / 255, green: 238 / 255, blue: 236 / 255)
                    .ignoresSafeArea(edges: .all) // Ensures the color fills the entire screen
                
                VStack {
                    Spacer(minLength: 35)
                    VStack(spacing: 10) {
                        //title
                        Text("Welcome Back Olivia!")
                            .font(.system(size: 35, weight: .bold))
                            .fontWeight(.bold)
                            .foregroundColor(Color( red: 56 / 255, green: 78 / 255, blue: 113 / 255))
                        
                        //subtitle
                        Text("Days since breakup: 7 days")
                            .font(.title2) //modifers
                            .fontWeight(.medium)
                            .foregroundColor(Color( red: 56 / 255, green: 78 / 255, blue: 113 / 255))
                            .padding(.top, 5)
                        
                    }
                    
                    Spacer()
                    
                    // Buttons
                    VStack(spacing: -10) {
                        Button(action: {
                            // Add sign-in action
                        }) {
                            Text("Step 1")
                                .font(.system(size: 18, weight: .bold))
                                .frame(width: 60, height: 60)
                                .padding()
                                .background(Color(red: 230 / 255, green: 220 / 255, blue: 217 / 255))
                                .foregroundColor(Color( red: 56 / 255, green: 78 / 255, blue: 113 / 255))
                                .cornerRadius(200)
                        }
                        
                        .padding(.horizontal, 40)
                        
                        Circle()
                            .frame(width: 4, height: 4)
                            .padding()
                            .foregroundColor(Color(red: 56 / 255, green: 78 / 255, blue: 113 / 255))
                        
                            .padding(.horizontal, 10)
                        
                        Circle()
                            .frame(width: 4, height: 4)
                            .padding()
                            .foregroundColor(Color( red: 56 / 255, green: 78 / 255, blue: 113 / 255))
                        
                            .padding(.horizontal, 40)
                        
                        //navigation link, which go to page3, when click on the button (NavigationLink)
                        NavigationLink(destination: Page3View()) {
                        //Button(action: {
                            // Add sign-in action})
                            
                            Text("Step 2 -       Anger")
                                .font(.system(size: 28, weight: .bold))
                                .frame(width: 130, height: 130)
                                .padding()
                                .background(Color( red: 235 / 255, green: 198 / 255, blue: 187 / 255))
                                .foregroundColor(Color( red: 56 / 255, green: 78 / 255, blue: 113 / 255))
                                .cornerRadius(200)
                        }
                        .padding(.horizontal, 40)
                        
                        Circle()
                            .frame(width: 4, height: 4)
                            .padding()
                            .foregroundColor(Color( red: 56 / 255, green: 78 / 255, blue: 113 / 255))
                        
                            .padding(.horizontal, 40)
                        
                        Circle()
                            .frame(width: 4, height: 4)
                            .padding()
                            .foregroundColor(Color( red: 56 / 255, green: 78 / 255, blue: 113 / 255))
                        
                        Button(action: {
                            // Add sign-in action
                        }) {
                            Text("Step 3")
                                .font(.system(size: 18, weight: .bold))
                                .frame(width: 60, height: 60)
                                .padding()
                                .background(Color( red: 230 / 255, green: 220 / 255, blue: 217 / 255))
                                .foregroundColor(Color( red: 56 / 255, green: 78 / 255, blue: 113 / 255))
                                .cornerRadius(200)
                        }
                        
                        .padding(.horizontal, 10)
                        
                        Circle()
                            .frame(width: 4, height: 4)
                            .padding()
                            .foregroundColor(Color( red: 56 / 255, green: 78 / 255, blue: 113 / 255))
                        
                            .padding(.horizontal, 40)
                        
                        Button(action: {
                            // Add sign-in action
                        }) {
                            Text("Step 4")
                                .font(.system(size: 18, weight: .bold))
                                .frame(width: 60, height: 60)
                                .padding()
                                .background(Color( red: 230 / 255, green: 220 / 255, blue: 217 / 255))
                                .foregroundColor(Color( red: 56 / 255, green: 78 / 255, blue: 113 / 255))
                                .cornerRadius(200)
                        }
                        
                        .padding(.horizontal, 40)
                        
                        Circle()
                            .frame(width: 4, height: 4)
                            .padding()
                            .foregroundColor(Color( red: 56 / 255, green: 78 / 255, blue: 113 / 255))
                        
                            .padding(.horizontal, 40)
                        
                        Button(action: {
                            // Add sign-in action
                        }) {
                            Text("Step 5")
                                .font(.system(size: 18, weight: .bold))
                                .frame(width: 60, height: 60)
                                .padding()
                                .background(Color( red: 230 / 255, green: 220 / 255, blue: 217 / 255))
                                .foregroundColor(Color( red: 56 / 255, green: 78 / 255, blue: 113 / 255))
                                .cornerRadius(200)
                        }
                        
                        .padding(.horizontal, 40)
                        
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
                                .position(x: 350, y:-380)
                        }
                        .padding()
                    }
                    
                    Spacer()
                }
                
            }
        }
    }
}

#Preview {
    Page2View()
    
}


