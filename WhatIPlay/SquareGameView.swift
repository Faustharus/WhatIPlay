//
//  SquareGameView.swift
//  WhatIPlay
//
//  Created by Damien Chailloleau on 09/02/2023.
//

import SwiftUI

struct SquareGameView: View {
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    let numbers = ["1", "1", "1", "1"]
    
    var body: some View {
        GeometryReader { geo in
            LazyVGrid(columns: columns) {
                ForEach(0 ..< numbers.count, id: \.self) { _ in
                    ThumbnailView(imageName: "DeadSpace", width: geo.size.width * 0.45, genreName: "Sci-Fi Horror")
                }
                .padding()
            }
        }
    }
}

struct SquareGameView_Previews: PreviewProvider {
    static var previews: some View {
        SquareGameView()
    }
}
