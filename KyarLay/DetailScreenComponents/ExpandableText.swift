//
//  ExpandableText.swift
//  KyarLay
//
//  Created by Mg Chan on 5/28/24.
//

import Foundation
import SwiftUI

struct ExpandableText: View {
    @State private var isExpanded: Bool = false
    var text: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(isExpanded ? text : String(text.prefix(200)))
                .foregroundColor(.black)
                .lineSpacing(8)
                .lineLimit(isExpanded ? nil : 5) // Limit lines when collapsed
                .padding(24)
            
            Button(action: {
                withAnimation {
                    isExpanded.toggle()
                }
            }) {
                HStack {
                    Spacer()
                    Text(isExpanded ? "Read less" : "Read more")
                        .foregroundColor(.blue)
                    .font(.footnote)
                    Image(systemName: isExpanded ? "chevron.up" : "chevron.right")
                }
                    
            }.padding(EdgeInsets(top: 0, leading: 16, bottom: 16, trailing: 16))
        }.background(Color.white)
            .padding(-8)
    }
}

struct ExpandableView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                ExpandableText(text: "Your long text goes here. It can be multiple lines, and you want to show a 'Read more' button if the text is too long. This is useful for creating posts or descriptions that are initially collapsed and can be expanded to reveal the full content.Your long text goes here. It can be multiple lines, and you want to show a 'Read more' button if the text is too long. This is useful for creating posts or descriptions that are initially collapsed and can be expanded to reveal the full content.Your long text goes here. It can be multiple lines, and you want to show a 'Read more' button if the text is too long. This is useful for creating posts or descriptions that are initially collapsed and can be expanded to reveal the full content.Your long text goes here. It can be multiple lines, and you want to show a 'Read more' button if the text is too long. This is useful for creating posts or descriptions that are initially collapsed and can be expanded to reveal the full content.Your long text goes here. It can be multiple lines, and you want to show a 'Read more' button if the text is too long. This is useful for creating posts or descriptions that are initially collapsed and can be expanded to reveal the full content.Your long text goes here. It can be multiple lines, and you want to show a 'Read more' button if the text is too long. This is useful for creating posts or descriptions that are initially collapsed and can be expanded to reveal the full content."
                )
                    .padding()
            }
            .padding()
        }.background(Color.white)
    }
}

#Preview {
    ExpandableView()
}
