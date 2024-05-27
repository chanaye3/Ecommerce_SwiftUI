//
//  BarItemView.swift
//  KyarLay
//
//  Created by Mg Chan on 4/25/24.
//

import Foundation
import SwiftUI

struct BarItemView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.white)
                .frame(height: 50)
            VStack(spacing : 0.0){
                HStack{
                    HStack(spacing : 0.0){
                        //logo
                        Image("ratePhoto")
                            .resizable()
                            .frame(width: 50,height: 50)
                            .cornerRadius(4)
                        Text("၀")
                    }
                    
                    //Spacer
                    Spacer()
                    //logo
                    
                    Image("logoImage")
                        .resizable()
                    
                        .frame(width: 100,height: 50)
                        .cornerRadius(4)
                    Spacer()
                    HStack(spacing: 20){
                        //Nitification
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 18,height: 32)
                            .foregroundColor(.black)
                        //Search
                        Image(systemName: "bell")
                            .resizable()
                            .frame(width: 28,height: 32)
                            .foregroundColor(.black)
                        
                        
                        //Profile
                        Image( systemName:"person.circle.fill")
                            .resizable()
                            .frame(width: 32,height: 32)
                            .foregroundColor(.black)
                    }
                    
                }
                .padding([.leading,.trailing],8)
                
                Spacer()
                
                Rectangle()
                    .fill(.divider)
                    .frame(height: 2)
                    .padding(.top,2)
                    
                    
            }
            .frame(height: 50)
        }
        
        
    }
}
