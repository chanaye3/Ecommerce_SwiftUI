//
//  CategoriesView.swift
//  KyarLay
//
//  Created by Mg Chan on 5/19/24.
//

import Foundation
import SwiftUI
struct CategoriesView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.backgroundColour)
                .frame(height:300)
            HStack{
                ZStack{
                    Rectangle()
                        .fill(.yellow)
                        .cornerRadius(10)
                    VStack(alignment : .leading){
                        Image("logoImage")
                            .resizable()
                            .frame(width: 100,height: 50)
                        
                        Text("အမျိုးအစားများ")
                            .fontWeight(.black)
                            .font(.system(size: 20))
                        Text("ကျားလေး မှာ ရရှိနိုင်သော ပစ္စည်း အမျိုးအစား များ")
                            .font(.system(size: 12))
                            .foregroundColor(.black)
                            .padding(.top,8)
                        Spacer()
                        HStack{
                            Spacer()
                            Image("floatingBubble")
                                .resizable()
                                .frame(width: 80,height: 80)
                        }
                        
                        
                    }
                    .padding()
                    
                }
                VStack(alignment: .leading){
                    ZStack{
                        Rectangle()
                            .fill(.purple)
                            .cornerRadius(6)
                        VStack(alignment: .leading){
                            Text("ဗဟုသုတ")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.top,8)
                            Text("ဆောင်းပါး , ဗွီဒီယို , အခြား...")
                                .font(.system(size: 12))
                                .foregroundColor(.white)
                                .padding(.top,4)
                            HStack{
                                Spacer()
                                Image("book")
                                    .resizable()
                                    .frame(width: 80,height: 80)
                            }
                        }.padding(8)
                    }
                    ZStack{
                        Rectangle()
                            .fill(.blue)
                            .cornerRadius(6)
                        HStack{
                            VStack(alignment: .leading){
                                Text("စကားဝိုင်း")
                                    .font(.system(size: 20))
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .padding(.top,8)
                                Text("မေမေတို့ စကားဝိုင်း")
                                    .font(.system(size: 12))
                                    .foregroundColor(.white)
                                    .padding(.top,4)
                                Spacer()
                            }
                            VStack{
                                Spacer()
                                Image("talk")
                                    .resizable()
                                    .frame(width: 60,height: 60)
                                
                            }
                        }.padding(8)
                    }
                    
                }
            }
        }.padding(8)
    }
}

