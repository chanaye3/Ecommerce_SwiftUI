//
//  HotCategoriesView.swift
//  KyarLay
//
//  Created by Mg Chan on 5/21/24.
//

import Foundation
import SwiftUI

struct HotCategoriesView : View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.white)
                .frame(height: 310)
            
            VStack(alignment:.leading){
                SeeMoreAndTitleView(text: "Hot Categories")
                
                
                ScrollView(.horizontal,showsIndicators: false) {
                    HStack {
                        ForEach(hotCategoriesNames, id: \.self) { id in
                            ZStack{
                                Rectangle()
                                    .fill(Color.gray.opacity(0.05))
                                    .frame(width: 120,height: 180)
                                    .cornerRadius(16)
                                    .padding(4)
                                VStack{
                                    Image("\(id.name)")
                                        .resizable()
                                        .frame(width: 80,height: 80)
                                        .cornerRadius(50)
                                        .padding(.top,30)
                                    Spacer()
                                    ZStack{
                                        Rectangle()
                                        
                                            .fill(Color.gray.opacity(0.1))
                                        
                                            .frame(width: 120,height: 60)
                                            .clipShape(BottomRoundedRectangle(radius: 16))
                                            .padding(.bottom,8)
                                        Text("\(id.category)")
                                            .foregroundColor(.gray)
                                    }
                                    
                                    
                                }
                            }
                            
                        }
                    }.padding(4)
                }
                
                
                Spacer()
                
            }.padding(.top,8)
        }
    }
}
