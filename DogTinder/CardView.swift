//
//  CardView.swift
//  DogTinder
//
//  Created by Alisa Serhiienko on 12.01.2024.
//

import SwiftUI

struct CardView: View {
    @State var card: Card
    
    var body: some View {
        GeometryReader { proxy in
            
        Image(card.image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: proxy.size.width - 16, height: proxy.size.height)
            .clipShape(RoundedRectangle(cornerRadius: 8))

            .overlay(alignment: .bottom) {
                LinearGradient(colors: [Color.black.opacity(0), Color.black.opacity(0.3)], startPoint: .top, endPoint: .bottom)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            
            .overlay(alignment: .bottomLeading) {
                VStack(alignment: .leading, spacing: 0) {
                    
                    Text(card.name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .padding(.bottom, 6)
                    
                    
                    Text(card.bio)
                        .font(.title3)
                        .fontWeight(.medium)
                        .foregroundStyle(.white)
                        .padding(.vertical, 3)
                        .padding(.horizontal, 12)
                        .background {
                            RoundedRectangle(cornerRadius: 16)
                                .fill(.indigo)
                            
                        }
                    
                }
                .padding(.horizontal, 16)
                .padding(.bottom, 44)
            }
            .padding(.horizontal, 8)
            .offset(x: card.x, y: card.y)
            .rotationEffect(.init(degrees: card.degree))
        }
            .gesture(
                DragGesture()
                    .onChanged({ value in
                        withAnimation(.default) {
                            card.x = value.translation.width
                            card.y = value.translation.height
                            card.degree = 6 * (value.translation.width > 0 ? 1 : -1)
                        }
                    })
                
                    .onEnded({ value in
                        withAnimation(.interpolatingSpring(mass: 1.0, stiffness: 64, damping: 6, initialVelocity: 0)) {
                            switch value.translation.width {
                            case 0...100:
                                card.x = 0; card.degree = 0; card.y = 0
                            case let x where x > 100:
                                card.x = 500; card.degree = 12
                            case let x where x < 0:
                                card.x = -500; card.degree = -12
                            default:
                                card.x = 0; card.y = 0
                            }
                        }
                    })
            )
    }
}

