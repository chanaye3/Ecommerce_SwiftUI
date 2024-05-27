//
//  ReuseableTabView.swift
//  KyarLay
//
//  Created by Mg Chan on 5/23/24.
//

import Foundation
import SwiftUI

struct tabbar: View {
    @Binding var index: Int
    let buttonIndex: Int
    let systemImage: String
    let title: String
    var isCircle: Bool = false
    
    var body: some View {
        Button(action: {
            self.index = buttonIndex
        }) {
            VStack {
                if isCircle {
                    ZStack {
                        Circle()
                            .fill(Color.white)
                            .frame(width: 70, height: 70)
                        Image(systemName: systemImage)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                            .foregroundColor(Color(.systemYellow))
                    }
                    .offset(y: -25)
                } else {
                    Image(systemName: systemImage)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                        .foregroundColor(self.index == buttonIndex ? Color(.systemYellow) : Color.black.opacity(0.3))
                    Text(title)
                        .font(.system(size: 14))
                        .foregroundColor(self.index == buttonIndex ? Color(.systemYellow) : Color.black.opacity(0.3))
                }
            }
        }
    }
}

struct ResuableTabItem : View {
    @Binding var index : Int
    let bottomIndex : Int
    let systemImage : String
    let imageWidth : CGFloat
    let imageHeight : CGFloat
    let imageName : String
    var isCircle : Bool = false
    var body: some View{
        Button(action: {
            self.index = bottomIndex
        }, label: {
            if isCircle{
                ZStack{
                    Circle()
                        .fill(.white)
                        .frame(width: 70,height: 70)
                        
                    Image(systemName: systemImage)
                        .resizable()
                        .font(.title)
                        .frame(width: imageWidth,height: imageHeight)
                        .foregroundColor(Color(.systemYellow))
                        
                }
                .offset(y : -25)
            }else{
                VStack {
                    Image(systemName: systemImage)
                        .resizable()
                        .frame(width: imageWidth ,height: imageHeight )
                    .foregroundColor(self.index == bottomIndex ? Color(.systemYellow) : Color.black.opacity(0.3))
                    Text(imageName)
                        .font(.system(size: 14))
                        .foregroundColor(self.index == bottomIndex ? Color(.systemYellow) : Color.black.opacity(0.3))
                }
            }
            
        })
    }
}
