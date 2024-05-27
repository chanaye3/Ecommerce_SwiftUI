//
//  patnerShopView.swift
//  KyarLay
//
//  Created by Mg Chan on 5/20/24.
//

import Foundation
import SwiftUI

struct patnerShopView: View {
    
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.white)
                .frame(height: 280)
            VStack{
                SeeMoreAndTitleView(text: "Partner Shop");                                 ScrollView(.horizontal,showsIndicators: false){
                    HStack{
                        ForEach(imageNames , id: \.self) { id in

                            imageSizeView(height: 160, width: 160, imageName: "\(id.name)")
                        }
                    }
                }
                
            }
        }
    }
}

