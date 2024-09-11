//
//  OrdersPage.swift
//  MyMedic
//
//  Created by Almaz Saparbaev on 6/9/24.
//

import SwiftUI

struct OrdersPage: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack{
            BackButton(action: {
                presentationMode.wrappedValue.dismiss()
            }, icon: "xmark").frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 10)
            ScrollView{
                OrderCard()
                OrderCard()
                
                OrderCard()
                HStack{
                    Text("Общий итог").fontWeight(.black)
                    Spacer()
                    Text("122220").frame(maxWidth: .infinity, alignment: .center)
                        .fontWeight(.bold)
                    
                }
                .padding(.bottom, 100)
            }
            CommonButton(text: "Продолжить", action: {}, textColor: Color("DarkMain"), backColor: Color("LightMain"))  .padding(.horizontal, 10)
          

            
        } .padding(.horizontal, 10)
            .background(Color("BackButtonBackground"))
    }
}

struct OrdersPage_Previews: PreviewProvider {
    static var previews: some View {
        OrdersPage()
    }
}
