import SwiftUI

struct SkinStuffCardView: View {
    
    let stuff: SkinStuff
    let padding: CGFloat = 10
    let lightBlue = Color(red: 0.75, green: 0.88, blue: 1.0)
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(lightBlue)
                .frame(width: 130, height: 130)
            
                .overlay{
                    Image(stuff.imageName)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                        .shadow(radius: 5)
                        .padding()
                
                }
            
                    Text(stuff.name)
                        .bold()
                        .foregroundColor(.black)
                        .font(.system(size: 10))
        }
    }
}

struct MedicalNewsCardView: View {
   
    let news: MedicalNews
    let padding: CGFloat = 10
    
    var body: some View {
        ZStack (alignment: .bottom) {
            
                Image(news.imageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .shadow(radius: 5)
                    .padding(30)
                    .border(.black, width: 2)
                    .cornerRadius(15)
                
                
                    .overlay(alignment: .topTrailing, content: {
                        Text(news.name)
                            .bold()
                            .foregroundColor(Color.black)
                            .padding()
                    })
            
                    .overlay(alignment: .bottomLeading, content: {
                        Text(news.description)
                            .bold()
                            .foregroundColor(Color.black)
                            .padding(7)
                            .font(.system(size: 10.0))
                            .font(.headline)
                    })
            
        }
    }
    
}

struct CollectionCardView: View {
    
    let collection: Collection
    let padding: CGFloat = 10
    let lightBlue = Color(red: 0.75, green: 0.88, blue: 1.0)
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(lightBlue)
                .frame(width: 130, height: 130)
            
                .overlay{
                    Image(collection.imageName)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                        .shadow(radius: 5)
                        .padding()
                
                }
            
                    Text(collection.description)
                        .bold()
                        .foregroundColor(.black)
                        .font(.system(size: 10))
        }
    }
}


struct SkinStuffCardView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionCardView(collection:
                            Collection.example3())
        .padding()
    }
}

