//
//  AddEmailView.swift
//  SnapScene
//
//  Created by Aydın KAYA on 19.08.2024.
//

import SwiftUI

struct AddEmailView: View {
    @State private var email = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 12){
                
                Spacer()
                
                Text("Add your email")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(Color("buttonTextColor"))
                
                
                Text("You'll use this email to sign in your account")
                    .font(.footnote)
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 24)
                
                TextField("Enter your email", text: $email)
                    .textInputAutocapitalization(.none)
                    .modifier(SCTextFieldModifier())
                
                NavigationLink{
                    CreateUsernameView()
                        .navigationBarBackButtonHidden(true)
                    
                } label: {
                    Text("Next")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color("buttonTextColor"))
                        .padding()
                    
                }.frame(maxWidth: .infinity, alignment: .center)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(Color("buttonTextColor") , lineWidth: 1)
                    )
                    .padding(.horizontal,28)
                
                Spacer()
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .padding()
            .toolbar{
                ToolbarItem(placement: .topBarLeading, content: {
                    Image(systemName: "chevron.left")
                        .imageScale(.large      )
                        .onTapGesture {
                            dismiss()
                        }
                })
            }
            
            
        }
    }
}

#Preview {
    AddEmailView()
}
