//
//  ImageAndTextView.swift
//  KyarLay
//
//  Created by Mg Chan on 6/12/24.
//

import SwiftUI

 
struct ImageAndTextView : View {
    var image : String = ""
    var text : String = ""
    var body: some View {
        HStack(spacing : 12){
            Image(image)
                .resizable()
                .frame(width: 15, height: 15)
                .background(
                    Circle()
                        .stroke(Color.yellow)
                        .background(Circle().foregroundColor(.yellow))
                        .frame(width: 24, height: 24)
                )
            Text(text)
                .foregroundColor(.black)
                .font(.system(size: 14))
        }
    }
}

#Preview {
    ImageAndTextView()
}
