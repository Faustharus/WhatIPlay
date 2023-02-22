//
//  RegularTextField.swift
//  WhatIPlay
//
//  Created by Damien Chailloleau on 15/02/2023.
//

import SwiftUI

struct RegularTextField: View {
    
    var header: String?
    var mainColor: Color
    var width: CGFloat
    var height: CGFloat
    var placeholder: String
    
    @Binding var text: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(header ?? "").font(.headline)
                .padding(.horizontal, 10)
                .padding(.vertical, -5)
            ZStack {
                RoundedRectangle(cornerRadius: 7)
                    .stroke(.black, lineWidth: 1.5)
                    .background(mainColor)
                    .frame(width: width, height: height)
                VStack {
                    TextField(placeholder, text: $text)
                }
                .padding()
            }
        }
    }
}

struct EmailTextField_Previews: PreviewProvider {
    static var previews: some View {
        RegularTextField(header: "Email", mainColor: Color.white, width: 380, height: 55, placeholder: "example@email.com", text: .constant("Email"))
    }
}
