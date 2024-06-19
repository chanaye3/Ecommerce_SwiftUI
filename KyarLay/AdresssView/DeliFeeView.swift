//
//  DeliFeeView.swift
//  KyarLay
//
//  Created by Mg Chan on 6/12/24.
//

import SwiftUI

struct DeliFeeView: View {
    @Environment (\.presentationMode) var presentationMode
    var body: some View {
        
        NavigationStack {
            VStack{
                VStack(alignment : .trailing){
                    HStack{
                        Spacer()
                        Text("ပို့ဆောင်ခနူန်းများ")
                            .foregroundColor(.black)
                            .font(.system(size: 16))
                            .padding(.leading)
                            Spacer()
                        
                            
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            HStack{
                                Image(systemName: "multiply")
                                
                                    .resizable()
                                    .fontWeight(.bold)
                                    .frame(width: 15, height: 15)
                                    .foregroundColor(.black)
                            }
                        }
                        
                    }
                    .padding()
                    Divider()
                        .padding(.bottom,-16)
                }
                
                ScrollView (showsIndicators : true){
                    ForEach(0..<10, id: \.self) { id in
                        VStack(alignment : .leading){
                            Text("မန္တလေး - 4000 Ks မြို့နယ်များ (4000) Ks")
                                .font(.system(size: 14))
                                .foregroundColor(.black)
                                .padding(EdgeInsets(top: 16, leading: 8, bottom: 0, trailing: 8))
                            Text("ကူမဲ ၊ ကျောက်ဆည် ၊ ကျောက်ပန်းတောင်း ၊ ငါန်းဇွန် ၊ ငါန်းမြာကြီး ၊ ငါ့သရောက် ၊ စဉ့်ကိုင် ၊ စဉ့်ကူး ၊ စမ္ပာယ်နဂိုရ် ၊ ဆီမီးခုံ ၊ ညောင်ဦး ၊ တကောင်း ၊ တပ်ကုန်း ၊ တောင်သာ ၊ တံတားဦး ၊ နွားထိုးကြီး ၊ ပင်းယ ၊ ပလိပ် ၊ ပုဂံ ၊ ပုဂံသစ်ပုဂံဟောင်း ၊ ပုသိမ်ကြီး ၊ ပျော်ဘွယ် ၊ ပြင်ဦးလွင် ၊ မတ္တရာ ၊ မန္တလေး ၊ မလှိုင် ၊ မိတ္ထီလာ ၊ မိုင်းမောဟော ၊ မ​တ္တ​ရာ​ ၊ ရတနာပုံ နည်းပညာသစ် ၊ ရမည်းသင်း ၊ လှိုင်းတက်ဟောင်း ၊ ဝတီးဟောင်း ၊ ဝမ်းတွင်း ၊ သပိတ်ကျင်း ၊ သရက်(ရေဇင်း)ဟောင်း ၊ သာစည် ၊ အင်းဝ ၊ အမရပူရ")
                                .font(.system(size: 14))
                                .foregroundColor(.black)
                                .padding()
                                .lineSpacing(5)
                                
                            Text("500000 Ks နှင့်အထက်ဝယ်ယူပါက ပို့ဆောင်ခ ၀ ကျပ်သာ ကျသင့်မည်ဖြစ်သည်")
                                .font(.system(size: 14))
                                .foregroundColor(.gray)
                                .padding(EdgeInsets(top: 0, leading: 16, bottom: 16, trailing: 16))
                            Divider()
                            
                            
                        }.background(Color.white)
                    }
                    .background(Color.white)
                   
                    
                    
                }.background(Color.white)
                   
            }.background(Color.white)
            
            
               
                
               
              
        }
            
    }
}

#Preview {
    DeliFeeView()
}
