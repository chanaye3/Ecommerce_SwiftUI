//
//  ProductView.swift
//  KyarLay
//
//  Created by Mg Chan on 5/28/24.
//

import Foundation
import SwiftUI

struct ProductView : View {
    @State var isPointSheetShowing : Bool = false
    var image : String
    var imageName : String
    var step : String
    var price : String
    var body: some View {
        ZStack{
            
            Rectangle()
                .fill(Color.white)
                .frame(height : 250)
                .cornerRadius(10)
                .shadow(radius: 10)
            HStack(){
                ZStack(alignment: .topTrailing){
                    Image(image) //"Image 5"
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width / 2.1, height: 230)
                        .padding(4)
                    Button {
                        isPointSheetShowing.toggle()
                    } label: {
                        Image(systemName: "info.circle")
                            .resizable()
                            .frame(width: 30, height: 30, alignment: .topTrailing)
                            .foregroundColor(.gray)
                            .padding(8)
                    }
                    
                    
                }.sheet(isPresented: $isPointSheetShowing, content: {
                    DiscountItemView()
                })
                
                
                VStack(alignment : .leading,spacing : 8 ){
                    Text(imageName) //"Similac follow On\nFormula Step 2, 6-12"
                        .font(.system(size: 14))
                        .foregroundColor(.black)
                    Text(step)   //"Step (2)"
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                    Text(price)  //"၆၃၈၀၀ ကျပ်"
                        .font(.system(size: 16))
                        .foregroundColor(.black)
                    Spacer()
                    //                                        .padding(.bottom , 68)
                    VStack(alignment : .leading){
                        Text("Delivery ၄ ရက် ကြာပါမည်")
                            .font(.system(size: 14))
                            .foregroundColor(.red)
                        Image("Delivery")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                    .offset(y : 38)
                    
                    HStack {
                        Spacer()
                        Button {
                            
                        } label: {
                            HStack{
                                
                                Image(systemName: "cart")
                                    .resizable()
                                    .frame(width: 15, height: 15, alignment: .bottomTrailing)
                                    .foregroundColor(.black)
                                Text("ခြင်းထဲထည့်ရန်")
                                    .font(.system(size: 12))
                                    .foregroundColor(.black)
                                
                            }
                            .padding(12)
                            .background(Color.yellow)
                            .cornerRadius(18)
                        }
                        
                        
                        
                        
                    }
                    
                    
                }.padding(EdgeInsets(top: 16, leading: 4, bottom: 4, trailing: 4))
                    .lineSpacing(8)
                
                
            }
            
        }
        .padding(EdgeInsets(top: 12 , leading: 8, bottom: 12, trailing: 8))
    }
}
