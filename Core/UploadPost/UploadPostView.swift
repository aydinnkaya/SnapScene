//
//  UploadPostView.swift
//  SnapScene
//
//  Created by Aydın KAYA on 29.08.2024.
//

import SwiftUI
import PhotosUI

struct UploadPostView: View {
    
    @State private var caption = ""
    @State private var imagePickerPresented = false
    @StateObject var viewModel = UploadPostViewModel()
    @Binding var tabIndex: Int
    
    var body: some View {
        
        VStack(){
            
            
            HStack(){
                Button(action: {
                    
                    caption = ""
                    viewModel.selectedImage = nil
                    viewModel.postImage = nil
                    tabIndex = 0
                }
                       , label: {
                    Text("Cancel")
                })
                
                
                Spacer()
                
                Text("New Post")
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button(action: {
                    
                    
                }
                       , label: {
                    Text("Upload")
                })
                
            }.padding(.all,8)
            
            
            
            HStack(){
                if let image = viewModel.postImage{
                                        image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200,height: 200)
                        .clipped()
                }
                
                TextField("Enter your caption...",
                          text: $caption, axis: .vertical)
            }
            
            Spacer()
        }
        .onAppear(){
            imagePickerPresented.toggle()
        }
        .photosPicker(isPresented: $imagePickerPresented
                      , selection: $viewModel.selectedImage)
    }
}

#Preview {
    UploadPostView(tabIndex: .constant(0))
}
