//
//  LoginView.swift
//  WhatIPlay
//
//  Created by Damien Chailloleau on 10/02/2023.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    @Binding var changeCredentials: Bool
    
    var body: some View {
        NavigationStack {
            GeometryReader { geo in
                BackgroundView(width: geo.size.width, firstColor: Color.white.opacity(0.1), secondColor: Color.white.opacity(1.0))
                    
                VStack {
//                    Button {
//                        // TODO: More Code Later
//                    } label: {
//                        Image(systemName: "xmark")
//                            .imageScale(.small)
//                            .bold()
//                            .frame(width: geo.size.width * 0.1, height: geo.size.height * 0.025)
//                            .background(Color.orange)
//                            .offset(x: geo.size.width * 0.4, y: geo.size.height * 0.005)
//                    }
                    
                    
                    VStack {
                        Image("WIPIcon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geo.size.width * 0.23)
                        
                        ZStack {
                            Text("What I Play")
                                .font(.title)
                                .frame(width: geo.size.width, height: geo.size
                                    .height * 0.1)
                                .bold()
                                .italic()
                            VStack {
                                LinearGradient(colors: [Color.purple.opacity(0.9), Color.purple.opacity(0.6), Color.purple.opacity(0.3)], startPoint: .bottom, endPoint: .top)
                                    .frame(width: geo.size.width, height: geo.size
                                        .height * 0.1)
                                    .mask(
                                        Text("What I Play")
                                            .font(.title)
                                            .bold()
                                            .italic()
                                    )
                            }
                        }
                    }
                    
                    Spacer()
                    
                    Group {
                        RegularTextField(header: "Email", mainColor: Color.white.opacity(0.9), width: geo.size.width * 0.95, height: geo.size.height * 0.06, placeholder: "Example@email.com", text: $email)
                        
                        PasswordTextField(header: "Password", mainColor: Color.white.opacity(0.9), width: geo.size.width * 0.95, height: geo.size.height * 0.06, placeholder: "********", password: $password)
                        
                        
                        RegularButtonView(placeholder: "LogIn", width: geo.size.width * 0.7, height: geo.size.height * 0.05, textColor: .white, backColor: .blue) {
                            // TODO: More Code Later
                        }
                        
                        TextButtonView(text: "Forgot your password ?") {
                            // TODO: More Code Later
                        }
                        .shadow(color: .blue, radius: 3, x: 5, y: 3)
                    }
                    
                    Spacer()
                    
                    Group {
                        GoogleButtonView(text: "Continue with Google", widthRect: geo.size.width * 0.7, heightRect: geo.size.height * 0.05, widthImage: geo.size.width * 0.04, widthStack: geo.size.width * 0.7, heightStack: geo.size.height * 0.05) {
                            // TODO: More Code Later
                        }
                        
                        AppleButtonView(text: "Continue with Apple", widthStack: geo.size.width * 0.7, heightStack: geo.size.height * 0.05) {
                            // TODO: More Code Later
                        }
                    }
                    
                    HStack {
                        Text("Doesn't have an account yet ?")
                        Text(" - ")
                        Button("SignIn", role: .none) {
                            self.changeCredentials.toggle()
                        }
                        .font(.headline)
                        .italic()
                    }
                    .font(.system(size: 16, weight: .bold, design: .serif))
                    
                    
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(changeCredentials: .constant(false))
    }
}
