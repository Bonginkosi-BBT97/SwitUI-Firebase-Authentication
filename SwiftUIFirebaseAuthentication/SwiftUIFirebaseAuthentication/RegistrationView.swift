//
//  RegistrationView.swift
//  SwiftUIFirebaseAuthentication
//
//  Created by Bonginkosi Tshabalala on 2023/06/13.
//

import SwiftUI

struct RegistrationView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        ZStack {
            Image("BackgroundScreen")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                VStack {
                    Text("Sign Up Now")
                        .font(.system(size: 42,weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                    
                    Text("Please fill the details and an create account")
                        .font(.title3)
                        .foregroundColor(.white.opacity(0.7))
                }
                
                VStack(spacing: 20) {
                    TextField("Enter Name", text: $name)
                        .modifier(CustomTextField())
                    TextField("Enter Email", text: $email)
                        .modifier(CustomTextField())
                    
                    SecureField("Enter Password", text: $password)
                        .modifier(CustomTextField())
                }
                .padding(.horizontal)
                .padding(.top, 60)
                
                Spacer()
                
                VStack(spacing: 20) {
                    Button {
                        
                    } label: {
                        Text("Create Account")
                            
                    }
                    .buttonStyle(CustomButton())
                    
                    HStack {
                        Text("Already have an acount?")
                            .font(.subheadline)
                            .foregroundColor(.white)
                        
                        Button {
                            
                        } label: {
                            Text("Sign In")
                                .font(.subheadline)
                                .foregroundColor(.red .opacity(0.7))
                        }
                    }
                }
                
                .padding(.horizontal)
                Spacer()
            }
        }
    }

}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
