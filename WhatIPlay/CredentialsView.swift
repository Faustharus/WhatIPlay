//
//  CredentialsView.swift
//  WhatIPlay
//
//  Created by Damien Chailloleau on 15/02/2023.
//

import SwiftUI

struct CredentialsView: View {
    
    @State private var changeCredentials: Bool = false
    
    var body: some View {
        if changeCredentials {
            SignInView(changeCredentials: $changeCredentials)
        } else {
            LoginView(changeCredentials: $changeCredentials)
        }
    }
}

struct CredentialsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            CredentialsView()
        }
    }
}
