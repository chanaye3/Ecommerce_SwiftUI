//
//  MinTheinKhaView\.swift
//  KyarLay
//
//  Created by Mg Chan on 5/19/24.
//

import Foundation
import SwiftUI

struct minTheinKhaView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.white)
                .frame(height: 220)
            Image("MinTheinKha")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 320,height: 200)
                .clipped()
                .cornerRadius(12)
                .padding(EdgeInsets(top: 4, leading: 0, bottom: 8, trailing: 0))
        }
        }
        
}

