//
//  DottedDivider.swift
//  KyarLay
//
//  Created by Mg Chan on 6/17/24.
//

import SwiftUI

struct DottedDivider: View {
    let dotSize: CGFloat = 4
    let spacing: CGFloat = 16
    var body: some View {
        let screenWidth = UIScreen.main.bounds.width
        let dotCount = Int(screenWidth / (dotSize + spacing))
        
        HStack {
            ForEach(0..<dotCount, id: \.self) { index in
                Rectangle()
                    .fill(Color.gray)
                    .frame(width: 4, height: 1)
                if index != dotCount - 1 { // Avoid adding Spacer after the last dot
                    Spacer(minLength: spacing)
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    DottedDivider()
}
