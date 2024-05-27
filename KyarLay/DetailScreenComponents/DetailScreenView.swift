//
//  DetailScreenView.swift
//  KyarLay
//
//  Created by Mg Chan on 5/24/24.
//

import SwiftUI

struct DetailScreenView: View {
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        ZStack{
           Rectangle()
                .fill(.backgroundColour)
            ScrollView(.vertical,showsIndicators: false){
               
                    ZStack(alignment : .topTrailing){
                        Rectangle()
                            .fill(.white)
                            .frame(height: 350)
                        
                            
                        
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
                
                    .frame(height: 350)
               
            }
        }
        .navigationTitle("detail")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                                Button(action: {
                                    presentationMode.wrappedValue.dismiss()
                                }) {
                                    HStack{
                                        Image(systemName: "chevron.left")
                                            
                                            .resizable()
                                            .frame(width: 10, height: 20)
                                            .foregroundColor(.black)
                                        
                                }
                                   
                                }
                            }
                ToolbarItem(placement: .principal) {
                    HStack {
                        
                            
                        
                        Image("logoImage") // Replace with your image
                            .resizable()
                            .frame(width: 80, height: 50)
                        
                    }
                }
                
            }
    }
}



#Preview {
    DetailScreenView()
}
