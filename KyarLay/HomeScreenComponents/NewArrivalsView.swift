//
//  NewArrivalsView.swift
//  KyarLay
//
//  Created by Mg Chan on 5/20/24.
//

import Foundation
import SwiftUI

struct NewArrivalsView : View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.white)
                .frame(height: 340)
                
            VStack(alignment:.leading){
                SeeMoreAndTitleView(text: "New Arrivals")
                
                
                ScrollView(.horizontal,showsIndicators: false) {
                    HStack {
                        ForEach(arrivals, id: \.self) { id in
                            
                            AccessoriesView(
                                image: "\(id.image)",
                                imageName: "\(id.imageName)",
                                price: "\(id.price)",
                                discount: "\(id.discount)"
                            )
                        }
                    }
                }
                
                
                
                
            }.padding(.top,8)
        }
    }
}
