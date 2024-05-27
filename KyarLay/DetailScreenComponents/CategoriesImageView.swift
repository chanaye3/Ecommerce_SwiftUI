//
//  CategoriesImageView.swift
//  KyarLay
//
//  Created by Mg Chan on 5/27/24.
//

import Foundation
import SwiftUI

struct CategoriesImageView: View {
    var body: some View {
        ZStack(alignment : .topTrailing){
            
            PhotoCarouselView(photos: photos)
            
            
            
            
            
            ZStack{
                Rectangle()
                    .fill(.gray)
                    .frame(width: 40,height: 20)
                    .cornerRadius(9)
                HStack{
                    
                    
                    Image(systemName: "photo.fill")
                        .resizable()
                        .frame(width: 12,height: 12)
                        .foregroundColor(.white)
                    Text("\(photos.count)")
                        .font(.system(size: 12))
                        .foregroundColor(.white)
                    
                }
            }.padding()
        }
    }
}
