//
//  CompleteSignUpView.swift
//  SnapScene
//
//  Created by Aydın KAYA on 19.08.2024.
//

import SwiftUI

struct CompleteSignUpView: View {
    @State private var password = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 12){
                
                Spacer()
                
                Text("Welcome to Snap Scene , aydinkaya")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(Color("buttonTextColor"))
                
                
                Text("Click below to complete registration and start using Snap Secene")
                    .font(.footnote)
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 24)
                
                
                
                Button{
                    print("Complete")
                } label: {
                    Text("Complete sign up ")
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
    CompleteSignUpView()
}
