//
//  HomeView.swift
//  WhatIPlay
//
//  Created by Damien Chailloleau on 22/02/2023.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchText: String = ""
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    let imgs = ["1", "1", "1", "1", "1", "1", "1", "1"]
    
    var body: some View {
        GeometryReader { geo in
            ScrollView {
                VStack(alignment: .leading) {
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(.black, lineWidth: 3)
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .imageScale(.large)
                            
                            TextField("Search...", text: $searchText)
                                .searchable(text: $searchText)
                                .keyboardType(.default)
                                .submitLabel(.search)
                        }
                        .padding(.horizontal, 10)
                    }
                    .frame(minHeight: geo.size.height * 0.07, maxHeight: geo.size.height * 0.07)
                    
                    Text("Recently Added")
                        .font(.title)
                        .bold()
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(0 ..< imgs.count, id: \.self) { _ in
                                Image("DeadSpace")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: geo.size.width * 0.92)
                                    .cornerRadius(7)
                            }
                        }
                    }
                    
                    Spacer().frame(height: geo.size.height * 0.03)
                    
                    Text("Most Liked")
                        .font(.title)
                        .bold()
                    
                    LazyVGrid(columns: columns) {
                        ForEach(0 ..< imgs.count, id: \.self) { _ in
                            ThumbnailView(imageName: "DeadSpace", width: geo.size.width * 0.45, genreName: "Sci-Fi Horror")
                        }
                    }
                }
                .padding()
            }
            .scrollDismissesKeyboard(.interactively)
        }
        .ignoresSafeArea(.keyboard)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
