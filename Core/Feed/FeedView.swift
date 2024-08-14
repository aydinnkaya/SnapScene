//
//  FeedView.swift
//  SnapScene
//
//  Created by Aydın KAYA on 7.08.2024.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack{
            ScrollView {
                
            HStack {
                Button(action: {}, label: {
                    Text("Instagram")
                        .font(.custom("Pacifico", size: 30))
                        .foregroundColor(Color("buttonTextColor"))
                        
                        
                })
                .padding(.leading, 4)
                
                Spacer() // This spacer will push the "heart" button to the right
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                })
                .padding(.top, 1)
                .padding(.leading, 3)
                .foregroundStyle(Color("buttonTextColor"))
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "message.badge")
                        .imageScale(.large)
                })
                .padding(.top, 1)
                .padding(.leading, 3)
                .foregroundStyle(Color("buttonTextColor"))
                
                
                
            }.padding(.leading,2)
                    .padding(.trailing,4)
            .frame(maxWidth: .infinity)
           
                LazyVStack{
                    ForEach(0...10, id: \.self){ post in
                        FeedCellView()
                    }
                }
                
            }
            .toolbar{
                ToolbarItem(placement: .automatic) {
                    
                }
                
            }
        }
    }
}
#Preview {
    FeedView()
}
