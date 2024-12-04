//
//  PageNinja.swift
//  A5Interface
//
//  Created by Olivia Sofie Møller on 26/11/2024.
//

import SwiftUI

struct PageNinjaView: View {
    var body: some View {
        
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
                    
                    
                    Text1View(text: "Heart-Aid", width: 1, color: Color( red: 56 / 255, green: 78 / 255, blue: 113 / 255))
                        .foregroundColor(Color( red: 235 / 255, green: 198 / 255, blue: 187 / 255))
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Spacer()
        
                    }
                    
                    
                }
                
                
            }
        }
    

#Preview {
    PageNinjaView()
    
}

struct Text1View: View {
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

