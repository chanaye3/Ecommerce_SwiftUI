//
//  BottomCornerRadius.swift
//  KyarLay
//
//  Created by Mg Chan on 5/21/24.
//

import Foundation
import SwiftUI


import SwiftUI

struct BottomRoundedRectangle: Shape {
    var radius: CGFloat

    func path(in rect: CGRect) -> Path {
        var path = Path()

        // Top left corner
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY - radius))
        
        // Bottom right corner
        path.addArc(center: CGPoint(x: rect.maxX - radius, y: rect.maxY - radius),
                    radius: radius,
                    startAngle: .zero,
                    endAngle: .degrees(90),
                    clockwise: false)
        
        // Bottom left corner
        path.addArc(center: CGPoint(x: rect.minX + radius, y: rect.maxY - radius),
                    radius: radius,
                    startAngle: .degrees(90),
                    endAngle: .degrees(180),
                    clockwise: false)
        
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY - radius))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))

        return path
    }
}

