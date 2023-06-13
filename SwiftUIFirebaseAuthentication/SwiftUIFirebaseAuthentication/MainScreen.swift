//
//  MainScreen.swift
//  SwiftUIFirebaseAuthentication
//
//  Created by Bonginkosi Tshabalala on 2023/06/13.
//

import SwiftUI

struct MainScreen: View {
    
    @EnvironmentObject var contentVM: ContentViewModel
    
    var body: some View {
        ZStack {
            
            Image("BackgroundScreen")
                .resizable()
                .ignoresSafeArea()
            VStack {
                HStack {
                    Spacer()
                    Button {

                            contentVM.signout()
                        
                    } label: {
                        Text("Sign Out")
                            .padding(10)
                            .foregroundColor(.white)
                            .background(.white .opacity(0.3))
                            .clipShape(Capsule())
                    }
                    .padding()
                }
                Spacer()
                
                VStack {
                    Text("Welcome Here")
                        .font(.system(size: 42, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                    
                    Text("Let's grow together")
                        .font(.title3)
                        .foregroundColor(.white .opacity(0.3))
                }
                .padding(.bottom, 60)
                
                Spacer()
                
            }
        }
        
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
