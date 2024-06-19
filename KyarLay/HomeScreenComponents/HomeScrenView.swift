//
//  HomeScrenView.swift
//  KyarLay
//
//  Created by Mg Chan on 5/23/24.
//

import Foundation
import SwiftUI

struct HomeScreenView : View {
    @Binding var isDetailViewPresented: Bool
    var body: some View {
        
        NavigationStack {
            ZStack{
                //Background
                Rectangle()
                    .fill(Color.white)
                //Content
                    .background(.white)
                VStack{
                    //BarItemView
                    BarItemView()
                    
                    ZStack{
                        Rectangle()
                            .fill(.backgroundColour)
                        
                        ScrollView(.vertical,showsIndicators: false){
                            
                            // MinTheinKha
                            minTheinKhaView()
                            
                            //REgisterView
                            registerView()
                            
                            //CategoriesView
                            CategoriesView()
                            
                            //shopAndAccessoriesView
                            shopAndAccessoriesView()
                            
                            //PatnerShop
                            patnerShopView()
                            
                            //NewArrivalsView
                            NewArrivalsView ()
                            
                            //NewArrivalsView
                            TopSellerView ()
                            
                            //PromotionView
                            PromotionView()
                            
                            //CurrrentCollectionView
                            CurrrentCollectionView()
                            
                            //HotCategoriesViews
                            HotCategoriesView ()
                            
                            // PromotedBrandsView
                            PromotedBrandsView()
                            
                            //Categories
                            ForYouView(isDetailViewPresented: $isDetailViewPresented)
                                .padding(4)
                            
                            
                            
                            
                            
                        }

                    }
                }
            }
        }
        
    }
}
#Preview {
    HomeScreenView(isDetailViewPresented: .constant(false))
}




