//
//  TopSellerView.swift
//  KyarLay
//
//  Created by Mg Chan on 5/20/24.
//

import Foundation
import SwiftUI

struct TopSellerView : View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.white)
                .frame(height: 350)
                
            VStack(alignment:.leading){
                SeeMoreAndTitleView(text: "Top Seller")
//                    .padding()
                
                
                ScrollView(.horizontal,showsIndicators: false) {
                    HStack {
                        ForEach(topSeller, id: \.self) { id in
                            
                            AccessoriesView(
                                image: "\(id.image)",
                                imageName: "\(id.imageName)",
                                price: "\(id.price)",
                                discount: "\(id.discount)"
                            )
                            

                        }
                    }
                }
                
                
                
                
            }
            
        }
    }
}
