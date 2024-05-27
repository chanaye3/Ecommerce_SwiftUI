//
//  CurrrentCollectionView.swift
//  KyarLay
//
//  Created by Mg Chan on 5/21/24.
//

import Foundation
import SwiftUI

struct CurrrentCollectionView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.white)
                .frame(height: 420)
            VStack(alignment: .leading){
                SeeMoreAndTitleView(text: "Current Colllectiion")
                ScrollView(.horizontal,showsIndicators: false){
                    HStack{
                        ForEach(currentNames , id: \.self) { id in
                            
                            imageSizeView(height: 300, width: 300, imageName: "\(id.name)")
                        }
                        ChevronAndMoreView()
                    }
                }
                
            }
        }
    }
}
