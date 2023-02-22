//
//  PasswordTextField.swift
//  WhatIPlay
//
//  Created by Damien Chailloleau on 15/02/2023.
//

import SwiftUI

struct PasswordTextField: View {
    
    var header: String?
    var mainColor: Color
    var width: CGFloat
    var height: CGFloat
    var placeholder: String
    
    @Binding var password: String
    
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
                    SecureField(placeholder, text: $password)
                }
                .padding()
            }
        }
    }
}

struct PasswordTextField_Previews: PreviewProvider {
    static var previews: some View {
        PasswordTextField(header: "Password", mainColor: Color.white, width: 380, height: 55, placeholder: "********", password: .constant("Password"))
    }
}
