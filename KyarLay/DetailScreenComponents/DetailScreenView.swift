//
//  DetailScreenView.swift
//  KyarLay
//
//  Created by Mg Chan on 5/24/24.
//

import SwiftUI

struct DetailScreenView: View {
    @Environment(\.presentationMode) var presentationMode
    
    @Binding var isDetailViewPresented: Bool
    @State var index = 0
    var body: some View {
        
        
        
        NavigationStack {
            VStack {
                VStack {
                    ScrollView(.vertical,showsIndicators: false){
                        
                        
                        
                        CategoriesDetailview()
                        PromotionAccessoriesView()
                        ProductDetailView()
                        ToSeeOtherProductView ()
                        AllProductView()
                       
                        
                    }
                    
                    .background(Color.backgroundColour)
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
                                
                            
                        }
                        
                        
                    }
                    
                    .padding(EdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 16))
                .background(Color.white)
                    Detailtabbar()
                        
                       
                } .background(Color.white)
                
                
                    
            }.background(Color.backgroundColour)
        }
            
            
            
        
    }
}



#Preview {
    DetailScreenView( isDetailViewPresented: .constant(false) )
}

















