//
//  ConnexionModalView.swift
//  WhatIPlay
//
//  Created by Damien Chailloleau on 20/02/2023.
//

import SwiftUI

struct ConnexionModalView: View {
    
    @Binding var connect: DifferentPage?
    
    var body: some View {
        VStack {
            Text("Hello, World!")
            
            RegularButtonView(placeholder: "Continue", width: 300, height: 50, textColor: .white, backColor: .blue) {
                self.connect = .connection
            }
        }
    }
    
    struct ConnexionModalView_Previews: PreviewProvider {
        static var previews: some View {
            ConnexionModalView(connect: .constant(.connection))
        }
    }
}
