//
//  StepperButtom.swift
//  KyarLay
//
//  Created by Mg Chan on 6/12/24.
//

import SwiftUI

struct StepperButton: View {
    var text : String = ""
    var action: () -> Void = {}
    var body: some View {
        Button(action: action) {
            Text(text)
                
                .font(.system(size: 20))
                .padding(EdgeInsets(top: 6, leading: 14, bottom: 6, trailing: 14))
                .overlay(RoundedRectangle(cornerRadius: 1).stroke(Color.gray))
        }
            
                    
                
            
        
    }
}
#Preview {
    StepperButton()
}
