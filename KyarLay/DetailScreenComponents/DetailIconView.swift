//
//  DetailIconView.swift
//  KyarLay
//
//  Created by Mg Chan on 5/27/24.
//

import Foundation
 import SwiftUI

struct DetailIconView: View {
    var systemname : String
    var body: some View {
        ZStack{
            Circle()
                .fill(.white)
                .frame(width: 35,height: 35)
                .shadow(radius: 4)
                .padding([.leading,.trailing],8)
            Image( systemname )
                .resizable()
                .frame(width: 24,height: 24)
                .foregroundColor(.black)
                .aspectRatio(contentMode: .fit)
        }
    }
}
