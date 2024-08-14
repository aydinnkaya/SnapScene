//
//  FeedCellView.swift
//  SnapScene
//
//  Created by Aydın KAYA on 7.08.2024.
//

import SwiftUI

struct FeedCellView: View {
    var body: some View {
        
        // Profile Image and User Name
        HStack(){
            Image("aydınKaya")
                .resizable()
                .scaledToFill()
                .frame(width: 80,height: 80)
                .clipShape(Circle())
            
            Text("AydınKaya")
                .font(.footnote)
                .fontWeight(.semibold)
            
            Spacer()
            
        }.padding(.leading, 8)
        
        // Post Image
        Image("aydınKaya")
            .resizable()
            .scaledToFill()
            .frame(height: 400)
            .clipShape(Rectangle())

        

        // Action Button
        
        HStack(){
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "heart")
                    .imageScale(.large)
                
            })
            
            Button(action: {}, label: {
                Image(systemName: "bubble.right")
                    .imageScale(.large)
                
            })
            
            
          
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "paperplane")
                    .imageScale(.large)
                
            })
            
            
            Spacer()
        }
        .padding(.leading, 8)
        .padding(.top, 4)
        .foregroundStyle(Color("buttonTextColor"))
        
        
        // Number of likes
        
        
        Text("300 likes")
            .font(.footnote)
            .fontWeight(.semibold)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 10 )
            .padding(.top, 1)
        
        
        // Explanation
        
        HStack(content: {
            Text("AydınKaya")
                .fontWeight(.semibold)
            +
            Text(" Hello Linkedln Family")
        })
        .frame(maxWidth: .infinity, alignment: .leading)
        .font(.footnote)
        .padding(.leading, 10)
        .padding(.top, 1)
        
        
        Text("10h ago")
            .font(.footnote)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 10)
            .padding(.top, 1)
            .foregroundStyle(.gray)
            
        
    }
}

#Preview {
    FeedCellView()
}
