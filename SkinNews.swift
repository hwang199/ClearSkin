// Settings.swift

import SwiftUI

struct SkinNews: View {
  var body: some View {
    NavigationView {
      List {
        Section
        {
          Text("Search topic")
        }
        Section
        {
          Text("New Products")
        }
        Section
        { //Photo fillers
          Rectangle()
                .fill(Color.pink)
                .frame(width: 100, height: 100, alignment: .center)
                .overlay(
                    Text("1")
                        .font(.largeTitle)
                )
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 50, alignment: .center)
                .position(x: 50, y: 0)
        }
        Section
        {
          Text("Medical News")
        }
        Section
        {
            //Photo fillers
            Rectangle()
                  .fill(Color.pink)
                  .frame(width: 100, height: 100, alignment: .center)
                  .overlay(
                      Text("1")
                          .font(.largeTitle)
                  )
              Rectangle()
                  .fill(Color.red)
                  .frame(width: 100, height: 50, alignment: .center)
                  .position(x: 50, y: 0)
        }
        Section
        {
          Text("Collection")
        }
        Section
        {
          //Photo fillers
            Rectangle()
                  .fill(Color.pink)
                  .frame(width: 100, height: 100, alignment: .center)
                  .overlay(
                      Text("1")
                          .font(.largeTitle)
                  )
              Rectangle()
                  .fill(Color.red)
                  .frame(width: 100, height: 50, alignment: .center)
                  .position(x: 50, y: 0)
        }
      }
      .listStyle(.insetGrouped)
      .navigationTitle("Skin News")
        
        List {
            Section
            {
                Text("Hello")
            }
        }
        .listStyle(.insetGrouped)
        .navigationTitle("ok")
        
    }
      
    }
    
    
  }


struct SkinNews_Preview: PreviewProvider {
    static var previews: some View {
        SkinNews()
    }
}


