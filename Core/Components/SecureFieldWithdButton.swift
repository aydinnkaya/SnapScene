//
//  SecureFieldWithdButton.swift
//  SnapScene
//
//  Created by Aydın KAYA on 19.08.2024.
//

import SwiftUI

struct SecureFieldWithdButton: View {
    
    @Binding private var text : String
    @State private var  isSecured : Bool = true
    private var title : String
    
    init(_ title: String, text: Binding<String>) {
        self.title = title
        self._text = text
    }
    
    var body: some View {
        ZStack(alignment: .trailing){
            Group{
                if isSecured {
                    SecureField(title, text: $text)
                        .textInputAutocapitalization(.none)
                        .modifier(SCTextFieldModifier())
                }
                else{
                    TextField(title, text: $text)
                        .textInputAutocapitalization(.none)
                        .modifier(SCTextFieldModifier())
                }
            }
            
            Button(action: {
                isSecured.toggle()
            }, label: {
                Image(systemName: self.isSecured ? "eye.slash" : "eye")
                    .tint(.gray)
                   
            })
            .padding(.trailing, 32)
        }
        
        
        
    }
}

#Preview {
    SecureFieldWithdButton("password", text: .constant(""))
}
