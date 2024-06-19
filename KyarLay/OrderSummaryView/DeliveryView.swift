//
//  DeliveryView.swift
//  KyarLay
//
//  Created by Mg Chan on 6/17/24.
//

import SwiftUI

struct DeliveryView : View {
    var body: some View {
        HStack{
            VStack(alignment : .leading){
                HStack{
                    Text("Deliver To....")
                        .foregroundColor(.black)
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                    Image("blueMap")
                        .resizable()
                        .frame(width : 30 , height: 30)
                }
                HStack{
                    VStack{
                        Text("နာမည် :    :")
                            .font(.system(size: 14))
                            .foregroundColor(Color("valueColor"))
                            .padding(8)
                        Text("လိပ်စာ :    :")
                            .font(.system(size: 14))
                            .foregroundColor(Color("valueColor"))
                            .padding(8)
                        
                    }
                    VStack(alignment : .leading){
                        
                        
                        Text("Chan Aye")
                            .font(.system(size: 14))
                            .fontWeight(.semibold)
                            .foregroundColor(Color.gray)
                            .padding(8)
                        Text("Testing  ကျောက်တံတား")
                            .font(.system(size: 14))
                            .foregroundColor(Color.gray)
                            .padding(8)
                        
                    }
                }
                
                
            }
            Spacer()
        }.padding()
            .background(Color.white)
            .cornerRadius(10)
            .padding([.leading,.trailing])
    }
}


#Preview {
    DeliveryView()
}
