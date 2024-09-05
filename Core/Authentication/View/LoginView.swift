//
//  LoginView.swift
//  SnapScene
//
//  Created by Aydın KAYA on 14.08.2024.
//

import SwiftUI

struct LoginView: View {
   
    @StateObject var loginViewModel = LoginViewModel()
    
    var body: some View {
        NavigationStack{
            Spacer()
            
            Text("Snap Scene")
                .font(.custom("Pacifico", size: 60))
                .foregroundColor(Color("buttonTextColor"))
            
            VStack(alignment: .center,spacing: 12) {
                TextField("Enter your email", text: $loginViewModel.email)
                    .disableAutocorrection(true)
                    .textInputAutocapitalization(.none)
                    .modifier(SCTextFieldModifier())
                
            SecureFieldWithdButton("Enter your password", text: $loginViewModel.password)
              
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .padding()
            
            
            
            Button{
                Task{
                    try await loginViewModel.login()
                }
             
            } label: {
                Text("Login")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color("buttonTextColor"))
                    .padding()
                
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color("buttonTextColor") , lineWidth: 1)
            )
            .padding(.horizontal,28)     
            .padding(.top,12)

            
            
            Button(action: {
                print("FORGET PASSWORD")
            }, label: {
                Text("Forget Password?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .padding(.top)
                    .padding(.trailing, 24)
                
            })
            .frame(maxWidth: .infinity,alignment: .trailing)
            
            HStack{
                Rectangle()
                    .frame(height: 0.5)
                Text("OR")
                Rectangle()
                    .frame(height: 0.5)
            }
            .padding(.horizontal,24)
            .foregroundStyle(.gray)
            
            HStack{
                
                Image("facebook")
                    .resizable()
                    .frame(width: 20, height: 20)
                
                Text("Continue with facebook")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color(.systemBlue))
                
            }
            .padding(.top, 8)
            
            Spacer()
            
            Divider()
                .background(Color(.darkGray))
            
            
            NavigationLink {
                AddEmailView()
                    .navigationBarBackButtonHidden(true)
            } label: {
                HStack{
                    Text("Don't have a account?")
                    
                    Text("Sign up")
                        .fontWeight(.semibold)
                }
                .padding(.vertical, 16)
            }
            
            
        }
    }
}

#Preview {
    LoginView(loginViewModel: LoginViewModel())
}
