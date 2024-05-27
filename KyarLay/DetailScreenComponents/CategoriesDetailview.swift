//
//  CategoriesDetailview.swift
//  KyarLay
//
//  Created by Mg Chan on 5/27/24.
//

import Foundation
import SwiftUI
struct CategoriesDetailview: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.white)
                .frame(height: 520)
            
            VStack {
                CategoriesImageView()
                DividerView()
                PriceView()
                Spacer()
                
            }
        }
    }
}

