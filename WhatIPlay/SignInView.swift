//
//  SignInView.swift
//  WhatIPlay
//
//  Created by Damien Chailloleau on 15/02/2023.
//

import SwiftUI

enum CurrentPage {
    case firstPage, secondPage
}

struct SignInView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    
    @State private var page: CurrentPage = .firstPage
    
    @Binding var changeCredentials: Bool
    
    var body: some View {
        NavigationStack {
            GeometryReader { geo in
                BackgroundView(width: geo.size.width, firstColor: Color.white.opacity(0.1), secondColor: Color.white.opacity(0.9))
                
                VStack {
//                    Button {
//                        // TODO: More Code Later
//                    } label: {
//                        Image(systemName: "xmark")
//                            .imageScale(.small)
//                            .bold()
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
                        if page == .firstPage {
                            RegularTextField(header: "First Name", mainColor: Color.white.opacity(0.8), width: geo.size.width * 0.95, height: geo.size.height * 0.06, placeholder: "John", text: $email)
                            
                            RegularTextField(header: "Last Name", mainColor: Color.white.opacity(0.8), width: geo.size.width * 0.95, height: geo.size.height * 0.06, placeholder: "Doe", text: $email)
                            
                            RegularButtonView(placeholder: "Next", width: geo.size.width * 0.7, height: geo.size.height * 0.05, textColor: .white, backColor: .blue) {
                                self.page = .secondPage
                            }
                            // MARK: - Must define a size for the 3 Regular Compo - Same with LoginView
                            TextButtonView(text: " ") {
                                // TODO: More Code Later
                            }
                        } else {
                            RegularTextField(header: "Email", mainColor: Color.white.opacity(0.8), width: geo.size.width * 0.95, height: geo.size.height * 0.06, placeholder: "Example@email.com", text: $email)
                            
                            PasswordTextField(header: "Password", mainColor: Color.white.opacity(0.8), width: geo.size.width * 0.95, height: geo.size.height * 0.06, placeholder: "********", password: $password)
                            
                            PasswordTextField(header: "Confirm Password", mainColor: Color.white.opacity(0.8), width: geo.size.width * 0.95, height: geo.size.height * 0.06, placeholder: "********", password: $confirmPassword)
                            
                            RegularButtonView(placeholder: "SignIn", width: geo.size.width * 0.7, height: geo.size.height * 0.05, textColor: .white, backColor: .blue) {
                                // TODO: More Code Later
                            }
                            
                            RegularButtonView(placeholder: "Back", width: geo.size.width * 0.7, height: geo.size.height * 0.05, textColor: .white, backColor: .red) {
                                self.page = .firstPage
                            }
                        }
                    }
                    
                    Spacer()
                    
                    Group {
                        GoogleButtonView(text: "SignIn with Google", widthRect: geo.size.width * 0.7, heightRect: geo.size.height * 0.05, widthImage: geo.size.width * 0.04, widthStack: geo.size.width * 0.7, heightStack: geo.size.height * 0.05) {
                            // TODO: More Code Later
                        }
                        
                        AppleButtonView(text: "SignIn with Apple", widthStack: geo.size.width * 0.7, heightStack: geo.size.height * 0.05) {
                            // TODO: More Code Later
                        }
                    }
                    
                    HStack {
                        Text("Already have an account ?")
                        Text(" - ")
                        Button("LogIn", role: .none) {
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

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView(changeCredentials: .constant(false))
    }
}
