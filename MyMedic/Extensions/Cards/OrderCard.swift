//
//  OrderCard.swift
//  MyMedic
//
//  Created by Almaz Saparbaev on 11/9/24.
//

import SwiftUI

struct OrderCard: View {
    var imageUrl: String = ""
    var title: String = "Titwefle"
    @State var count: String = "1"
    @State var price: String = "1000"
    @State var totalPrice: String = "10"
    var body: some View {
        VStack{
            
            
            HStack{
                
                Text(title).fontWeight(.bold)
                    
                    .foregroundColor(Color("SC"))
                
                Spacer()
                
                Button(action: {
                    
                    var countInt = Int(count)
                    count = String((countInt ?? 0) + 1)
                    
                    
                }){
                    Image(systemName: "plus.circle.fill").resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color("GreenCustom"))
                    
                }
                
                TextField(count, text: $count) .font(.custom("Bartina Bold", size: 20))
                    .keyboardType(.numberPad)
                    .foregroundColor(Color("SC"))
                    .frame(width: 50, height: 30, alignment: .center)
                    .multilineTextAlignment(.center)
                
                
                
                Button(action: {
                    var countInt = Int(count) ?? 1
                    
                    if countInt > 0{
                        count = String((countInt ?? 1) - 1)
                    }
                    
                }){
                    Image(systemName: "minus.circle.fill").resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color("RedCustom"))
                    
                }}
            HStack{
                VStack{
                    Text("Цена (за 1 ед.)").frame(maxWidth: .infinity, alignment: .leading)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("AuthColor"))
                    Text(price)  .frame(maxWidth: .infinity, alignment: .leading)
                        .fontWeight(.bold)
                        .foregroundColor(Color("SC"))
                }
               
                VStack{
                    
                    Text("К оплате")
                        .fontWeight(.semibold)
                        .foregroundColor(Color("AuthColor"))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    
                    
                   
                    Text(totalPrice) .foregroundColor(Color("SC"))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .fontWeight(.bold)
                    
                    
                    
                }.frame(maxWidth: 130, alignment: .center)
                    .padding(.vertical, 10)
                    .onChange(of: count){ newValue in
                        
                        var countInt = Int(count) ?? 0
                        var priceInt = Int(price) ?? 1
                        totalPrice = String(countInt * priceInt)
                    }
              
            }
            Divider()
                          .padding(.horizontal, 5)
                          .foregroundColor(.gray)
            }.padding(.vertical, 20)
         
        
        
    }
}

struct OrderCard_Previews: PreviewProvider {
    static var previews: some View {
        OrderCard()
    }
}
