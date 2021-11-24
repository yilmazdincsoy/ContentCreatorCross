//
//  Home.swift
//  ContentCreatorCross (iOS)
//
//  Created by Yılmaz Dinçsoy on 23.11.2021.
//

import SwiftUI

struct Home: View {
    var window = NSScreen.main?.visibleFrame
    var body: some View {
        HStack{
            SideBar()
            QuestionsBar()
            Spacer()
            QuestionView()
            Spacer()
           
        }
        .frame(width: window!.width, height: window!.height)
        .preferredColorScheme(.light)
        .background(BlurWindow())
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
