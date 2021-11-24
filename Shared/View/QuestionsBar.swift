//
//  QuestionsBar.swift
//  ContentCreatorCross
//
//  Created by Yılmaz Dinçsoy on 24.11.2021.
//

import SwiftUI

struct QuestionsBar: View {
    
    var body: some View {
        HStack{
            GeometryReader{proxy in
                ScrollView{
                
                        RowView(proxy: proxy, image: "soru1")
                        RowView(proxy: proxy, image: "soru1")
                        RowView(proxy: proxy, image: "soru1")
                        RowView(proxy: proxy, image: "soru1")
                        RowView(proxy: proxy, image: "soru1")
                        RowView(proxy: proxy, image: "soru1")
                       
                    
                }
            }
            Divider()
        }
        //bar default size
        .frame(width: 200)
        .padding(.horizontal, 10)
        .padding(.top, 20)
        
    }
}

struct QuestionsBar_Previews: PreviewProvider {
    static var previews: some View {
        QuestionsBar()
    }
}

struct RowView: View {
    @State var onHover = false
    var proxy: GeometryProxy
    var image = ""
    var body: some View {
        ZStack{
            Image(image)
                .resizable()
                .aspectRatio( contentMode: .fill)
                .frame(width: (proxy.frame(in: .global).width), height: 150)
                .background(Color.white.opacity(0.9))
                .onHover(perform: {hovering in
                    onHover = hovering
                })
                .shadow(color: Color.black.opacity(0.1), radius: 10, x: 5, y: 5)
                .shadow(color: Color.black.opacity(0.1), radius: 10, x: -5, y: -5)
            Color.black.opacity(onHover ? 0.2 : 0 )
        }
        .cornerRadius(20)
    }
}
