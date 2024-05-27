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
                
                    
                    
                CategoriesDetailview()
                   
                   
                
                    
                
                    
                    
               
            }
        }
        .background(Color(.white))
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
                    
                        
                            
                        
                        Image("logoImage") // Replace with your image
                            .resizable()
                            .frame(width: 80, height: 50)
                            .padding(.bottom)
                        
                    
                    
                }
                
                
            }
            
    }
}



#Preview {
    DetailScreenView()
}









