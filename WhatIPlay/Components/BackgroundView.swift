//
//  BackgroundView.swift
//  WhatIPlay
//
//  Created by Damien Chailloleau on 15/02/2023.
//

import SwiftUI

struct BackgroundView: View {
    
    var width: CGFloat
    var firstColor: Color
    var secondColor: Color
    
    var body: some View {
        ZStack {
            Image("MainBackground")
                .resizable()
                .scaledToFill()
                .frame(width: width)
                .ignoresSafeArea()
            VStack {
                RadialGradient(colors: [firstColor, secondColor], center: .center, startRadius: 100, endRadius: 450)
                    .ignoresSafeArea()
            }
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(width: 400, firstColor: Color.white.opacity(0.1), secondColor: Color.white.opacity(0.9))
    }
}
