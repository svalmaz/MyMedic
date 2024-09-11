//
//  OrdersPage.swift
//  MyMedic
//
//  Created by Almaz Saparbaev on 6/9/24.
//

import SwiftUI

struct ProducPage: View {
    let columns = [
           GridItem(.flexible(), spacing: 25),
           GridItem(.flexible())
       ]
    @State var isShowingOrdersList = false
    var body: some View {
        ZStack{
            VStack{
                ScrollView{
                    LazyVGrid(columns: columns){
                        ProductCard()
                        ProductCard()
                        ProductCard()
                        ProductCard()
                        
                        ProductCard()
                        
                        ProductCard()
                        ProductCard()
                        
                        ProductCard()
                        
                        
                    }.padding()
                }
            }
            Button(action:{
                isShowingOrdersList.toggle()
            }
                  
            ){
                Image(systemName: "cart.fill") // Иконка корзины из SF Symbols
                               .resizable()
                               .aspectRatio(contentMode: .fit)
                               .padding(16) // Отступы внутри кнопки
                               .background(Color("MainColor")) // Цвет фона кнопки
                               .clipShape(Circle()) // Округление кнопки в круг
                               .foregroundColor(.white) // Цвет иконки
                               .frame(width: 60, height: 60) // Размер кнопки
                               .shadow(radius: 5) // Тень для кнопки
            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                .padding(30)
        } .background(Color("BackgroundColor"))
            .sheet(isPresented: $isShowingOrdersList) {
                       OrdersPage()
                           .presentationDetents([.fraction(0.8)]) // Презентация на 40% высоты экрана
                   }
    }
}

struct ProducPage_Previews: PreviewProvider {
    static var previews: some View {
        ProducPage()
    }
}
