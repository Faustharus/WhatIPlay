//
//  TextButtonView.swift
//  WhatIPlay
//
//  Created by Damien Chailloleau on 15/02/2023.
//

import SwiftUI

struct TextButtonView: View {
    
    typealias Actionhandler = () -> Void
    
    var text: String
    var handler: Actionhandler
    
    init(text: String, handler: @escaping TextButtonView.Actionhandler) {
        self.text = text
        self.handler = handler
    }
    
    var body: some View {
        Button(action: handler) {
            Text(text)
                .font(.headline)
        }
    }
}

struct TextButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TextButtonView(text: "Forgot your password ?") { }
    }
}
