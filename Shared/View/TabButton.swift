//
//  TabButton.swift
//  ContentCreatorCross
//
//  Created by Yılmaz Dinçsoy on 23.11.2021.
//

import SwiftUI

struct TabButton: View {
    var image: String
    var title: String
    @State var isOnHover = false
    @Binding var selected: String
    
    var body: some View {
        Button(action: {
            withAnimation(.spring()){
                selected = title
            }
            //TODO: konunun soruları questionsbar da listelenecek
        }){
            HStack{
                Image(systemName: image)
                    .font(.title2)
                    .foregroundColor(selected == title ? Color.black : black)
                    .frame(width: 25)
                Text(title)
                    .fontWeight(selected == title ? .semibold : .none)
                    .foregroundColor(selected == title ? Color.black : black)
                    .animation(.none)
                Spacer()
            }
            .background(Color.black.opacity(isOnHover ? 0.2 : 0))
            .padding(.leading)
            .frame(height: 25)
        }
        .buttonStyle(PlainButtonStyle())
        .onHover(perform: {hovering in
            withAnimation{
                isOnHover = hovering
            }
        })
        
        
    }
}

var black = Color.black.opacity(0.5)
