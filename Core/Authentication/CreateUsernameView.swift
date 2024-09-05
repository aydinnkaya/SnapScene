//
//  CreateUsernameView.swift
//  SnapScene
//
//  Created by Aydın KAYA on 19.08.2024.
//

import SwiftUI

struct CreateUsernameView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel : RegisterViewModel
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 12){
                
                Spacer()
                
                Text("Add your username")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(Color("buttonTextColor"))
                
                
                Text("You'll use this email to sign in your account")
                    .font(.footnote)
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 24)
                
                TextField("Enter your username", text: $viewModel.username)
                    .textInputAutocapitalization(.none)
                    .modifier(SCTextFieldModifier())
                
                NavigationLink{
                   
                    CreatePasswordView()
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
    CreateUsernameView()
        .environmentObject(RegisterViewModel())
}
