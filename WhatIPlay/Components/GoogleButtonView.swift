//
//  GoogleButtonView.swift
//  WhatIPlay
//
//  Created by Damien Chailloleau on 15/02/2023.
//

import SwiftUI

struct GoogleButtonView: View {
    
    typealias ActionHandler = () -> Void
    
    let text: String
    let widthRect: CGFloat
    let heightRect: CGFloat
    let widthImage: CGFloat
    let widthStack: CGFloat
    let heightStack: CGFloat
    let handler: ActionHandler
    
    init(text: String, widthRect: CGFloat, heightRect: CGFloat, widthImage: CGFloat, widthStack: CGFloat, heightStack: CGFloat, handler: @escaping GoogleButtonView.ActionHandler) {
        self.text = text
        self.widthRect = widthRect
        self.heightRect = heightRect
        self.widthImage = widthImage
        self.widthStack = widthStack
        self.heightStack = heightStack
        self.handler = handler
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 7)
                .stroke(.black, lineWidth: 1.5)
                .frame(width: widthRect, height: heightRect)
            VStack {
                Button(action: handler) {
                    Image("googleIcon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: widthImage)
                    Text(text)
                }
                .font(.system(size: 16, weight: .medium, design: .none))
                .frame(width: widthStack, height: heightStack)
                .foregroundColor(.black)
                .background(Color.white)
                .cornerRadius(7)
            }
        }
    }
}


struct GoogleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        GoogleButtonView(text: "Continue with Google", widthRect: 380, heightRect: 70, widthImage: 25, widthStack: 300, heightStack: 60, handler: { })
    }
}
