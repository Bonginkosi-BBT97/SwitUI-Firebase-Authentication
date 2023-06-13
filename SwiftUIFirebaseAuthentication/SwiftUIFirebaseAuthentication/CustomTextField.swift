//
//  CustomTextField.swift
//  SwiftUIFirebaseAuthentication
//
//  Created by Bonginkosi Tshabalala on 2023/06/13.
//

import SwiftUI

struct CustomTextField: ViewModifier {
 
    
    func body(content: Content) -> some View {
        content
            .padding(13)
            .background(.white.opacity(0.7), in: RoundedRectangle(cornerRadius: 15, style: .continuous))
    }
}

