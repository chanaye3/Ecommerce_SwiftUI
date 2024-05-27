//
//  ForYouView.swift
//  KyarLay
//
//  Created by Mg Chan on 5/24/24.
//

import Foundation
import SwiftUI


struct ForYouView: View {
    var body: some View {
        VStack{
            Text("သင့်အတွက်")
                .fontWeight(.bold)
                .font(.system(size: 20))
                .padding(16)
            
            
            LazyVGrid(columns : columns , spacing: 10) {
                ForEach(forYou, id: \.self) { id in
                    NavigationLink {
                        DetailScreenView()
                    } label: {
                        ZStack{
                            Rectangle()
                                .fill(.white)
                                .frame(height: 300)
                                .cornerRadius(12)
                                .padding(2)
                            VStack{
                                Image("\(id.image)")
                                    .resizable()
                                    .frame(width: 150,height :150)
                                
                                HStack {
                                    VStack(alignment : .leading){
                                        LimitedText(text: "\(id.imageName)", characterLimit: 15)
                                        
                                            .foregroundColor(.gray)
                                            .padding([.top,.bottom])
                                        
                                        HStack{
                                            Text("\(id.price) Ks")
                                                .foregroundColor(.black)
                                            Text("\(id.discount)")
                                                .foregroundColor(.black)
                                        }
                                    }.padding([.leading,.trailing],4)
                                    Spacer()
                                }.padding(8)
                                
                                
                                
                            }
                        }
                    }

                   
                }
                
            }
            
            
            
            
            
            
        }.padding(2)
    }
}
