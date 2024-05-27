//
//  LimitedTextView.swift
//  KyarLay
//
//  Created by Mg Chan on 5/24/24.
//

import Foundation
import SwiftUI

struct LimitedText: View {
    let text: String
    let characterLimit: Int
    
    var truncatedText: String {
        if text.count > characterLimit {
            return String(text.prefix(characterLimit)) + "..."
        } else {
            return text
        }
    }
    
    var body: some View {
        Text(truncatedText)
            .lineLimit(1) // Optional: Limit to one line
            .truncationMode(.tail) // Optional: Ensure ellipsis is at the end
    }
}
