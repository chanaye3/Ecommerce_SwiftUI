//
//  DividerView.swift
//  KyarLay
//
//  Created by Mg Chan on 5/27/24.
//

import Foundation
import SwiftUI

struct DividerView: View {
    var body: some View {
        ZStack{
            Divider()
            HStack{
                Spacer()
                DetailIconView(systemname: "share")
                DetailIconView(systemname: "heart")
                DetailIconView(systemname: "message")
                
            }.padding([.leading,.trailing],8)
        }
    }
}
