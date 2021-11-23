//
//  DisclosureGroupView.swift
//  ContentCreatorCross
//
//  Created by Yılmaz Dinçsoy on 23.11.2021.
//

import SwiftUI

struct DisclosureGroupView: View {
    //Tabbutton için gerekli propertyler
    @State var selected = "Home"
    //booleans
    @State var isOnHover = false
    @State var isExpanded = true
    // list oluşturulana kadar dummy data
    var header = ""
    
    var body: some View {
        DisclosureGroup(isExpanded: $isExpanded, content: {
            //içerik tasarımı
            ScrollView(.vertical){
                TabButton(image: "note.text", title: "dinamik", selected: $selected)
                TabButton(image: "note.text", title: "hareket", selected: $selected)
                TabButton(image: "note.text", title: "harmonik", selected: $selected)
                TabButton(image: "note.text", title: "atış", selected: $selected)
                TabButton(image: "note.text", title: "elektrik", selected: $selected)
                TabButton(image: "note.text", title: "dairesel", selected: $selected)
            }
            
            
        }, label: {
            //header kısmının tasarımı
            
            HStack{
                Button(action: {isExpanded.toggle()}) {
                    HStack{
                        Text(header)
                            .fontWeight(.bold)
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
