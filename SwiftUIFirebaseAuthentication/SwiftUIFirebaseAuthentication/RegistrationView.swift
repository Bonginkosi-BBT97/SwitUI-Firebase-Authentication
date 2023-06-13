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
    
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var contentVM: ContentViewModel
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
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                        .modifier(CustomTextField())
                    
                    SecureField("Enter Password", text: $password)
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                        .modifier(CustomTextField())
                }
                .padding(.horizontal)
                .padding(.top, 60)
                
                Spacer()
                
                VStack(spacing: 20) {
                    Button {
                        Task {
                            await contentVM.createUser(withEmail: email, password: password)
                        }
                    } label: {
                        Text("Create Account")
                            
                    }
                    .buttonStyle(CustomButton())
                    
                    HStack {
                        Text("Already have an acount?")
                            .font(.subheadline)
                            .foregroundColor(.white)
                        
                        Button {
                            dismiss()
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
