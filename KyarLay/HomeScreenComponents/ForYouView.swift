//
//  ForYouView.swift
//  KyarLay
//
//  Created by Mg Chan on 5/24/24.
//

import Foundation
import SwiftUI


struct ForYouView: View {
    @Binding var isDetailViewPresented : Bool
    var body: some View {
        VStack{
            Text("သင့်အတွက်")
                .foregroundColor(.black)
                .fontWeight(.bold)
                .font(.system(size: 20))
                .padding(16)
            
            
            LazyVGrid(columns : columns , spacing: 10) {
                ForEach(forYou, id: \.self) { id in
                    
                    Button(action: {
                        isDetailViewPresented = true
                    }, label: {
                       
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
                            .background(Color.white)
                            .cornerRadius(12)
                            
                        
                        
                    })
                    
                    
                }
                
            }
            
            
            
            
            
            
        }.padding(2)
    }
}
#Preview {
    ForYouView(isDetailViewPresented: .constant(false))
}
