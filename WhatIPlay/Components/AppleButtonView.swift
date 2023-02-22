//
//  AppleButtonView.swift
//  WhatIPlay
//
//  Created by Damien Chailloleau on 15/02/2023.
//

import SwiftUI

struct AppleButtonView: View {
    
    typealias ActionHandler = () -> Void
    
    let text: String
    let widthStack: CGFloat
    let heightStack: CGFloat
    let handler: ActionHandler
    
    init(text: String, widthStack: CGFloat, heightStack: CGFloat, handler: @escaping AppleButtonView.ActionHandler) {
        self.text = text
        self.widthStack = widthStack
        self.heightStack = heightStack
        self.handler = handler
    }
    
    
    var body: some View {
        VStack {
            Button(action: handler) {
                Image(systemName: "apple.logo")
                Text(text)
            }
            .font(.system(size: 16, weight: .medium, design: .none))
            .frame(width: widthStack, height: heightStack)
            .foregroundColor(.white)
            .background(Color.black)
            .cornerRadius(7)
        }
    }
}

struct AppleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AppleButtonView(text: "Continue with Apple", widthStack: 390, heightStack: 60) { }
    }
}
