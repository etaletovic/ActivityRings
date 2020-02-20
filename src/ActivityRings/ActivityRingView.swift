//
//  ContentView.swift
//  ActivityRings
//
//  Created by Emir Taletovic on 2/16/20.
//  Copyright © 2020 Emir Taletovic. All rights reserved.
//

import Foundation
import SwiftUI

struct ActivityRingView: View {

    @Binding var progress: CGFloat

    var outlineColor: Color = .outlineRed;
    var darkColor: Color = .darkRed;
    var lightColor: Color = .lightRed;
    var image: Image? = nil;
    var ringWidth: CGFloat = 30

    var body: some View {
        GeometryReader { (geometry: GeometryProxy) in
            ZStack {
                Circle()
                    .stroke(self.outlineColor, lineWidth: self.ringWidth)
                Circle()
                    .trim(from: 0, to: self.progress)
                    .stroke(
                        AngularGradient(
                            gradient: Gradient(colors: self.colors),
                            center: .center,
                            startAngle: .degrees(0),
                            endAngle: .degrees(360)
                            
                        ),
                        style: StrokeStyle(lineWidth: self.ringWidth, lineCap: .round)
                        
                ).rotationEffect(.degrees(
                    self.fullCircle
                        ? 270 + 360*Double(self.progress) - 360
                        : 270))
                
                Circle()
                .frame(width:self.ringWidth, height: self.ringWidth)
                .offset(y: -geometry.size.height / 2)
                    .foregroundColor(
                        self.fullCircle
                            ? Color.clear
                            : self.darkColor )

                Circle()
                    .frame(width:self.ringWidth, height: self.ringWidth)
                    .offset(y: -geometry.size.height / 2)
                    .foregroundColor(
                        self.touching
                            ? self.lightColor
                            : Color.clear)
                    .shadow(color: Color.black.opacity(0.5),
                            radius: 1.5, x:5)
                    .rotationEffect(
                        .degrees(360 * Double(self.progress)))
                
                self.image?
                .resizable()
                .font(Font.title.weight(.semibold))
                    .foregroundColor(.black)
                    .frame(width: self.ringWidth * 0.5, height: self.ringWidth * 0.5)
                
                
                .offset(y: -geometry.size.height / 2)
                
            }
            .frame(idealWidth: 300, idealHeight:300, alignment: .center)
        }
    }
    
    private var colors : [Color] {
        [darkColor, lightColor]
    }
    
    private var touching: Bool {
        progress > 0.95
    }
    
    private var fullCircle: Bool {
        progress >= 1
    }

}
