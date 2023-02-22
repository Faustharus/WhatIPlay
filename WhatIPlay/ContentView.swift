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
    
    @State private var world: Bool = false
    @State private var toLog: Bool = false
    
    @State private var connect: DifferentPage?
    
    var body: some View {
        VStack {
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
        .padding()
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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
