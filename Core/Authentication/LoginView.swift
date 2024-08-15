//
//  LoginView.swift
//  SnapScene
//
//  Created by Aydın KAYA on 14.08.2024.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                
                Text("Snap Scene")
                    .font(.custom("Pacifico", size: 60))
                    .foregroundColor(Color("buttonTextColor"))
                
                VStack(alignment: .center, content: {
                    TextField("Enter your email", text: $email)
                        .textInputAutocapitalization(.none)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)), style: FillStyle())
                        .padding(.horizontal, 24)
                    
                    SecureField("Enter your password", text: $password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)), style: FillStyle())
                        .padding(.horizontal, 24)
                }).padding(.bottom, 30)
                
              
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 370, height: 44)
                        .foregroundStyle(Color("buttonTextColor"))
                        .overlay(
                          RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(.gray) , lineWidth: 1)
                         )
                    
                }).padding()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Create Account")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 370, height: 44)
                        .foregroundStyle(Color("buttonTextColor"))
                        .overlay(
                          RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(.gray) , lineWidth: 1)
                         )
                    
                }).padding()
                
                
                Button(action: {
                    print("FORGET PASSWORD")
                }, label: {
                    Text("FORGET PASSWORD?")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 200, height: 24)
                        .foregroundStyle(Color("buttonTextColor"))
                        .overlay(
                          RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(.gray) , lineWidth: 1)
                         )
                        .padding(.top)
                    
                })
                .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)

                
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
