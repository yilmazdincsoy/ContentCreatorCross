//
//  SidePanel.swift
//  ContentCreatorCross (iOS)
//
//  Created by Yılmaz Dinçsoy on 23.11.2021.
//

import SwiftUI

struct SideBar: View {
    var body: some View {
        HStack {
            VStack{
                
                DisclosureGroupView(header: "Subjects")
                DisclosureGroupView(header: "Packages")
                Spacer()
            }
        
            Divider()
        }
        //side bar default size
        .frame(width: 200)
        .padding(.leading, 10)
    }
}

struct SidePanel_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
    }
}
