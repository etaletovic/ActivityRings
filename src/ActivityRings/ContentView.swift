//
//  ContentView.swift
//  ActivityRings
//
//  Created by Emir Taletovic on 2/16/20.
//  Copyright © 2020 Emir Taletovic. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var progress: CGFloat = 1.3
    var body: some View {
        
        VStack {
            ZStack {
                Color.black.edgesIgnoringSafeArea(.all)
                
                ActivityRingView(
                    progress: $progress, outlineColor: .outlineRed,
                    darkColor: .darkRed,
                    lightColor: .lightRed,
                    image: Image(systemName: "arrow.right"))
                    .frame(height: 238)
                
                ActivityRingView(
                    progress: $progress, outlineColor: .outlineGreen,
                    darkColor: .darkGreen,
                    lightColor: .lightGreen,
                    image: Image(systemName: "chevron.right.2"))
                    .frame(height: 174)
                
                ActivityRingView(
                    progress: $progress, outlineColor: .outlineBlue,
                    darkColor: .darkBlue,
                    lightColor: .lightBlue,
                    image: Image(systemName: "arrow.up"))
                    .frame(height: 110)
            }
            
            Slider(value: $progress, in: 0...7, step: 0.01)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
