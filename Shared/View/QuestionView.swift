//
//  QuestionView.swift
//  ContentCreatorCross
//
//  Created by Yılmaz Dinçsoy on 24.11.2021.
//

import SwiftUI

struct QuestionView: View {
    
    var subjects = ["Dinamik", "Elektrik", "Atom Modelleri"]
    var attainments = ["Net kuvvet bulma", "İvme hesaplama", "Sürtünme kuvveti"]
    var authors = ["Yılmaz Dinçsoy", "Leyla Burcu Dinçsoy"]
    var packages = ["Fizik1", "Fizik2", "Kimya1", "Kimya2"]
    @State private var selectedAttainment = 0
    @State private var selectedSubject = 0
    @State private var selectedAuthor = 0
    @State private var selectedPackage = 0
    
    
    var body: some View {
        GeometryReader{proxy in
            VStack(spacing: 20){
                ScrollView{
                    ScrollView(.horizontal) {
                        //Pickers
                        HStack{
                            Picker("Subjects", selection: $selectedSubject) {
                                ForEach(subjects.indices){ index in
                                    HStack{
                                        Image(systemName: "book.fill")
                                        Spacer()
                                        Text(subjects[index]).tag(index)
                                    }
                                    
                                }
                            }
                            .frame(width: 250)
                            Picker("Attainments", selection: $selectedAttainment) {
                                ForEach(attainments.indices){ index in
                                    HStack{
                                        Image(systemName: "book.fill")
                                        Spacer()
                                        Text(attainments[index]).tag(index)
                                    }
                                    
                                }
                            }
                            .frame(width: 250)
                            Picker("Authors", selection: $selectedAuthor) {
                                ForEach(authors.indices){ index in
                                    HStack{
                                        Image(systemName: "pencil")
                                        Spacer()
                                        Text(authors[index]).tag(index)
                                    }
                                    
                                }
                            }
                            .frame(width: 250)
                            Picker("Packages", selection: $selectedPackage) {
                                ForEach(packages.indices){ index in
                                    HStack{
                                        Image(systemName: "magsafe.batterypack.fill")
                                        Spacer()
                                        Text(packages[index]).tag(index)
                                    }
                                    
                                }
                            }
                            .frame(width: 250)
                            Spacer()
                        }
                    }
                    HStack(spacing: 5){
                        Text(subjects[selectedSubject])
                        Text("|")
                        Text(attainments[selectedAttainment])
                        Text("|")
                        Text(authors[selectedAuthor])
                        Text("|")
                        Text(packages[selectedPackage])
                        Spacer()
                    }
                    ZStack{
                        Image("soru1")
                          
                    }
                    .background(Color.white)
                    .padding(20)
                }
            }
            .padding(20)
        }
        
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
