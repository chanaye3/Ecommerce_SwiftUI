//
//  SeeMoreAndTitleView.swift
//  KyarLay
//
//  Created by Mg Chan on 5/20/24.
//

import Foundation
import SwiftUI

struct SeeMoreAndTitleView : View {
    var text : String = ""
    var body: some View {
        HStack{
            Text(text)
                .foregroundColor(.black)
                .fontWeight(.bold)
                .font(.system(size: 18))
            Spacer()
            HStack{
                Text("ထပ်ကြည့်ရန်")
                    .foregroundColor(.gray)
                ZStack{
                    Rectangle()
                        .fill(.yellow)
                        .frame(width: 45,height: 45)
                        .cornerRadius(6)
                    Image(systemName: "chevron.right")
                        .resizable()
                        .fontWeight(.bold)
                        .frame(width: 15,height: 25)
                        .foregroundColor(.white)
                    
                }
            }
        }.padding()

    }
}

struct AccessoriesView : View {
    var image : String = ""
    var imageName : String = ""
    var price : String = ""
    var discount : String = ""
//    var imageName : String = ""
    var body: some View {
        VStack(alignment:.leading){
            Image(image)
                .resizable()
                .frame(width: 120,height: 120)
                .cornerRadius(12)
            Text(imageName)
                .font(.system(size: 12))
                .foregroundColor(.gray)
                .padding(.top,12)
            HStack{
                Text(price)
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                Text("ks")
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
            }.padding(.top,12)
            Text(discount)
                .font(.system(size: 12))
                .foregroundColor(.gray)
                .padding([.bottom,.top],14)
            
            Spacer()
        }
        .padding(8)
    }
}
struct imageSizeView : View {
    var height : CGFloat
    var width : CGFloat
    var imageName : String
    var body: some View{
        ZStack{
            Rectangle()
                .fill(.white)
                .frame(width: width,height: height)
            
            
            
                .cornerRadius(16)
                .shadow(color: Color.gray.opacity(0.5), radius: 10, x: 5, y: 5)
                .padding(EdgeInsets(top: 8, leading: 8, bottom: 32, trailing: 8))
            Image(imageName)
                .resizable()
                .frame(width: width,height: height)
            
            
                .cornerRadius(16)
                .padding(.bottom,24)
            
            
        }
    }
}
