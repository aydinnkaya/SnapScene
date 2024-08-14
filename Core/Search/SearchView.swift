//
//  SearchView.swift
//  SnapScene
//
//  Created by Aydın KAYA on 14.08.2024.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack{
                    ForEach(0...20, id: \.self){ user in
                        HStack(){
                            Image("aydinKaya")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40,height: 40)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading){
                                Text("AydinKaya")
                                    .fontWeight(.semibold)
                                    .foregroundStyle(Color("buttonTextColor"))
                                
                                Spacer()
                                
                                Text("Aydın Kaya")
                                    
                                    .foregroundStyle(Color("buttonTextColor"))
                            }
                            .font(.footnote)
                            Spacer()
                        }.padding(.horizontal, 30)

                    }
                }
                .searchable(text:$searchText, prompt: "Searchh..." )
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

#Preview {
    SearchView()
}
