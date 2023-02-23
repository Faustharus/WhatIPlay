//
//  ProfileView.swift
//  WhatIPlay
//
//  Created by Damien Chailloleau on 22/02/2023.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        GeometryReader { geo in
            ScrollView {
                HStack {
                    Spacer()
                    
                    VStack {
                        Image(systemName: "person.crop.circle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geo.size.width * 0.3)
                        Text("John Doe")
                            .font(.title2)
                            .bold()
                    }
                    
                    Spacer()
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
