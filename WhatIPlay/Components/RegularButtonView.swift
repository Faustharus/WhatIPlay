//
//  RegularButtonView.swift
//  WhatIPlay
//
//  Created by Damien Chailloleau on 15/02/2023.
//

import SwiftUI

struct RegularButtonView: View {
    
    typealias ActionHandler = () -> Void
    
    let placeholder: String
    let width: CGFloat
    let height: CGFloat
    let textColor: Color
    let backColor: Color
    let handler: ActionHandler
    
    init(placeholder: String, width: CGFloat, height: CGFloat, textColor: Color, backColor: Color, handler: @escaping RegularButtonView.ActionHandler) {
        self.placeholder = placeholder
        self.width = width
        self.height = height
        self.textColor = textColor
        self.backColor = backColor
        self.handler = handler
    }
    
    var body: some View {
        Button(action: handler) {
            Text(placeholder)
        }
        .font(.system(size: 16, weight: .bold, design: .serif))
        .frame(width: width, height: height)
        .foregroundColor(textColor)
        .background(backColor)
        .cornerRadius(7)
    }
}

struct RegularButtonView_Previews: PreviewProvider {
    static var previews: some View {
        RegularButtonView(placeholder: "LogIn", width: 390, height: 60, textColor: Color.white, backColor: Color.blue, handler: { })
    }
}
