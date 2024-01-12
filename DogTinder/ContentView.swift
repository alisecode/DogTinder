//
//  ContentView.swift
//  DogTinder
//
//  Created by Alisa Serhiienko on 12.01.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isFavourite = false
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Button {
                    //
                } label: {
                    Image(systemName: "ellipsis.message")
                        .font(.system(size: 32))
                        .foregroundStyle(.gray.opacity(0.5))
                }
                
                Spacer()
                
                Button {
                    //
                } label: {
                    Image(systemName: "dog.fill")
                        .font(.system(size: 40))
                        .foregroundStyle(.indigo)
                    
                }
                
                Spacer()
                
                
                Button {
                    //
                } label: {
                    Image(systemName: "person.circle")
                        .font(.system(size: 32))
                        .foregroundStyle(.gray.opacity(0.5))
                    
                }
                
            }
            .padding(.horizontal, 16)
            
            ZStack(alignment: .bottomLeading) {
                ForEach(Card.data.reversed()) { card in
                    CardView(card: card)
                        
                }
            }
            .padding(.top, 16)
            
            
            HStack {
                
                Button {
                    //
                } label: {
                    Image(systemName: "arrow.counterclockwise")
                        .font(.system(size: 32, weight: .regular))
                    .foregroundStyle(.gray.opacity(0.5))                }
                
                Spacer()
                
                Button {
                    isFavourite.toggle()
                } label: {
                    Image(systemName: isFavourite ? "suit.heart.fill" : "suit.heart")
                        .font(.system(size: 40, weight: .medium))
                        .foregroundStyle(.pink)
                }
                
                Spacer()
                
                Button {
                    //
                } label: {
                    Image(systemName:  "info.circle")
                        .font(.system(size: 32, weight: .regular))
                        .foregroundStyle(.gray.opacity(0.5))
                    
                }
            }
            .padding(.top, 16)
            .padding(.horizontal, 16)
            
        }
        
    }
}


#Preview {
    ContentView()
}


