//
//  ContentView.swift
//  WhatIPlay
//
//  Created by Damien Chailloleau on 09/02/2023.
//

import SwiftUI

enum DifferentPage: Identifiable {
    case modal, connection
    
    var id: Int {
        hashValue
    }
}

struct ContentView: View {
    
    @State private var connect: DifferentPage?
    
    var body: some View {
        ZStack {
            Button {
                self.connect = .modal
            } label: {
                VStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    Text("Hello, world!")
                }
            }
            .buttonStyle(.plain)
        }
        .sheet(item: $connect) { item in
            switch item {
                case .modal:
                    ConnexionModalView(connect: $connect)
                        .presentationDetents([.fraction(0.15)])
                case .connection:
                    CredentialsView()
                        .presentationDetents([.large])
            }
        }
        .safeAreaInset(edge: .bottom) {
            TabView {
                HomeView()
                    .tabItem {
                        Label("Home", systemImage: "1.square")
                    }
                AnotherView()
                    .tabItem {
                        Label("Another", systemImage: "2.square")
                    }
                SquareGameView()
                    .tabItem {
                        Label("Square", systemImage: "3.square")
                    }
                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "4.square")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //AnotherView()
        ContentView()
    }
}

// MARK: - AnotherView

struct AnotherView: View {
    
    var platform = ["SteamColor", "XboxColor", "PlayStationColor", "NintendoColor"]
    
    @State private var choice: String = "SteamColor"
    
    var body: some View {
        GeometryReader { geo in
            VStack(alignment: .center) {
                Picker("", selection: $choice) {
                    ForEach(platform, id: \.self) { item in
                        Image(item)
                            .resizable()
                            .scaledToFit()
                    }
                    .padding(.all, 5)
                }
                .pickerStyle(.inline)
            }
        }
    }
}
