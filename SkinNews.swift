//
//  SkinNews.swift
//  ClearSkinProject
//
//  Created by Michelle Li on 2/15/24.
//

import SwiftUI

struct NewsView: View {
    
    @State private var stuff = SkinStuff.examples()
    @State private var news = MedicalNews.examples()
    @State private var collection = Collection.examples()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack {
                    HStack {
                        NavigationLink("Search Topic") {}
                            .padding(4)
                            .font(.headline)
                            .frame(maxWidth: 400, alignment: .center)
                            .padding(2)
                            .foregroundStyle(.gray)
                            .border(.black)
                            .frame(alignment: .trailing)
                        Spacer()
                    }
                    .padding(15)
                    
                    
                    HStack {
                        Text("New Products")
                            .bold()
                            .font(.title2)
                            .multilineTextAlignment(.leading)
                            .padding([.leading])
                        Spacer()
                    }
                    
                    ScrollView(.horizontal) {
                        LazyHStack {
                            ForEach(stuff) {stuff in
                                SkinStuffCardView(stuff: stuff)
                            }
                        }
                    }
                    .padding(10)
                    .frame(height: 200)
                    .navigationTitle("Skin News")
                    
                    HStack {
                        Text("Medical News")
                            .font(.title)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .padding([.leading])
                        Spacer()
                    }
                    
                    ScrollView(.horizontal) {
                        LazyHStack {
                            ForEach(news) {news in
                                MedicalNewsCardView(news: news)
                                    .padding([.bottom, .trailing], 10)
                                    .padding([.leading, .leading], 20)
                            }
                        }
                    }
                    .padding(10)
                    .frame(height: 250)
                    
                    HStack {
                        Text("Collection")
                            .bold()
                            .font(.title2)
                            .multilineTextAlignment(.leading)
                            .padding([.leading])
                        Spacer()
                    }
                    
                    ScrollView(.horizontal) {
                        LazyHStack {
                            ForEach(collection) {collection in
                                CollectionCardView(collection: collection)
                            }
                        }
                    }
                    .padding(10)
                    .frame(height: 200)
                }
            }
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}


