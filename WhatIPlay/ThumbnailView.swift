//
//  ThumbnailView.swift
//  WhatIPlay
//
//  Created by Damien Chailloleau on 10/02/2023.
//

import SwiftUI

struct ThumbnailView: View {
    
    let imageName: String
    let width: CGFloat
    let genreName: String
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 7))
                .frame(width: width)
            VStack {
                Text(genreName)
                    .foregroundColor(.white)
                    .font(.system(size: 16, weight: .light, design: .serif))
                    .padding(.horizontal, 5)
            }
        }
    }
}

struct ThumbnailView_Previews: PreviewProvider {
    static var previews: some View {
        ThumbnailView(imageName: "DeadSpace", width: 300, genreName: "Sci-Fi Horror")
    }
}
