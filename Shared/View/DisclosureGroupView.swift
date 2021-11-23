//
//  DisclosureGroupView.swift
//  ContentCreatorCross
//
//  Created by Yılmaz Dinçsoy on 23.11.2021.
//

import SwiftUI

struct DisclosureGroupView: View {
    @State var isOnHover = false
    @State var isExpanded = true
    // list oluşturulana kadar dummy data
    var dummyContent = ""
    var header = ""
    var body: some View {
        DisclosureGroup(isExpanded: $isExpanded, content: {
            //içerik tasarımı
            ScrollView(.vertical){
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    HStack(spacing: 10){
                        Image(systemName: "note.text")
                        Text(dummyContent)
                        Spacer()
                    }
                    .padding(.leading, 20)
                }
                .buttonStyle(PlainButtonStyle())
                
            }
            
            
        }, label: {
            //header kısmının tasarımı
            
            HStack{
                Button(action: {isExpanded.toggle()}) {
                    HStack{
                        Text(header)
                            .fontWeight(.semibold)
                        Spacer()
                    }
                }
                .buttonStyle(PlainButtonStyle())
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image(systemName: "plus.square")
                        .opacity(isOnHover ? 1 : 0)
                }
                .buttonStyle(PlainButtonStyle())
                
            }
            
            .onHover(perform: {hovering in
                withAnimation{
                    isOnHover = hovering
                }
            })
            
            
            
            
            
        })
    }
}

struct DisclosureGroupView_Previews: PreviewProvider {
    static var previews: some View {
        DisclosureGroupView()
    }
}
