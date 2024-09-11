//
//  ProductCard.swift
//  MyMedic
//
//  Created by Almaz Saparbaev on 9/9/24.
//

import SwiftUI

struct ProductCard: View {
    var imageUrl: String = "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg"
    var title: String = "Title"
    var price: String = "32"
    var category: String = "Category"
    var productId: Int = 1
    @State var count: Int = 0
    var body: some View {
        VStack{
            AsyncImage(url: URL(string: imageUrl)){phase in
                if let image = phase.image{
                    image.resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 150)
                        .clipped()
                    
                    
                }
                else if phase.error != nil{
                    ProgressView()
                }
                else{
                    ProgressView()
                }
                
            }
            .scaledToFill()
            .frame(minWidth: 185, maxWidth: .infinity)
            .frame(minHeight: 150)
            .frame(width: 185, height: 135)
            .clipped()
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
            Text(price) .font(.custom("Bartina Bold", size: 20))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 8)
            Text(title)
                            .font(.custom("Cruinn Bold", size: 18))
                            .foregroundColor(.secondary)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
         
                           
            Text(category)
                            .font(.custom("Cruinn Regular", size: 15))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 8)
                            .lineLimit(3)
                            .foregroundColor(Color("SC"))
            HStack{
                Button(action: {
                   
                    count = count + 1

                    
                }){
                    Image(systemName: "plus.circle.fill").resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color("GreenCustom"))
                    
                }
                Spacer()
                Text(String(count)).font(.custom("Bartina Bold", size: 20))
                    
                    
                Spacer()
                Button(action: {
                    if count > 0{
                        count = count - 1
                    }
                    
                }){
                    Image(systemName: "minus.circle.fill").resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color("RedCustom"))
                }
            }
        }
        
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard()
    }
}
