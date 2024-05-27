//
//  PromotionView.swift
//  KyarLay
//
//  Created by Mg Chan on 5/21/24.
//

import Foundation
import SwiftUI

struct PromotionView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.white)
                .frame(height: 420)
            VStack(alignment: .leading){
                SeeMoreAndTitleView(text: "Promotion")
                ScrollView(.horizontal,showsIndicators: false){
                    HStack{
                        ForEach(promotionNames , id: \.self) { id in
                            
                            imageSizeView(height: 300, width: 300, imageName: "\(id.name)")
                        }
                        ChevronAndMoreView()
                    }
                }
                
            }
        }
    }
}

struct ChevronAndMoreView: View {
    var body: some View {
        VStack{
            ZStack{
                Circle()
                    .fill(Color.gray.opacity(0.1))
                    .frame(width: 60, height: 60)
                    .shadow(color: Color.gray.opacity(0.5), radius: 10, x: 0, y: 5)
                Image(systemName: "chevron.right")
                    .resizable()
                    .frame(width: 25,height: 40)
                    .fontWeight(.bold)
            }
            Text("More")
                .font(.system(size: 24))
                .fontWeight(.bold)
            
            
            
        }.padding([.leading,.trailing],48)
    }
}

