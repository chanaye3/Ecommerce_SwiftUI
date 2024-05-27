//
//  HomeScreen.swift
//  KyarLay
//
//  Created by Mg Chan on 4/25/24.
//

import SwiftUI

struct HomeScreen: View {

    var body: some View {
        
        Home()
            .background(Color(.white))

        }
        
            }
#Preview {
    HomeScreen()
}

struct Home : View {
    @State var index  = 0
    var body: some View {
        VStack(spacing : 0){
            
            Spacer()
            Group {
               
                    
                        //Change Your ViewBase on Index...
                        switch index {
                        case 0:
                            HomeScreenView()
                        case 1:
                            Text("")
                        case 2:
                            Text("")
                        case 3:
                            Text("")
                        case 4:
                            Text("")
                        default:
                            Text("")
                        }
                    
              
            }.background(Color.white.opacity(0.06))
            TabBar(index: self.$index)
        }
    }
}

struct TabBar : View {
    @Binding var index : Int
    var body: some View {
        Divider()
        HStack(spacing: 0){
            

          ResuableTabItem(index: $index, bottomIndex: 0, systemImage: "storefront.fill", imageWidth: 25, imageHeight: 25, imageName: "Mall")
            Spacer(minLength: 0)

            ResuableTabItem(index: $index, bottomIndex: 1, systemImage: "square.grid.2x2.fill", imageWidth: 25, imageHeight: 25, imageName: "Categories")
            Spacer(minLength: 0)

            ResuableTabItem(index: $index, bottomIndex: 2, systemImage: "cart.circle.fill", imageWidth: 60, imageHeight: 60, imageName: "", isCircle: true)
            Spacer(minLength: 0)

            ResuableTabItem(index: $index, bottomIndex: 3, systemImage: "person.3.fill" , imageWidth: 32, imageHeight: 25, imageName: "Conv...")
            Spacer(minLength: 0)

            ResuableTabItem(index: $index , bottomIndex: 4, systemImage: "lightbulb.fill", imageWidth: 25, imageHeight: 25, imageName: "Know...")
        }
        .padding(.horizontal , 25)
        .padding(.top , 10)
        .padding(.bottom,-25)
        
        //bottom padding only for nonsafeArea Phones...
//        .padding(.bottom,UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 10 : 0)
        
    }
}




















 
