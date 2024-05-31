//
//  Example4.swift
//  KyarLay
//
//  Created by Mg Chan on 5/29/24.
//

import Foundation
import SwiftUI


struct DetailScreen: View {
    @Environment(\.presentationMode) var presentationMode
    
    @State private var scrollOffset: CGFloat = 0
    
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    // Top Tab Bar
                    if scrollOffset <= 2 {
                        Detailtabbar()
                            .padding(EdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 16))
                            .background(Color.white)
                            .frame(height: 30)
                    }
                    
                    // Track scroll position
                    GeometryReader { geometry in
                        Color.clear
                            .onAppear {
                                self.scrollOffset = geometry.frame(in: .global).minY
                            }
                            .onChange(of: geometry.frame(in: .global).minY) { value in
                                self.scrollOffset = value
                            }
                    }
                    .frame(height: 0)
                    
                    // Your content views
                    CategoriesDetailview()
                    PromotionAccessoriesView()
                    ProductDetailView()
                    ToSeeOtherProductView()
                    AllProductView()
                    
                    // Bottom Tab Bar
                    if scrollOffset + UIScreen.main.bounds.height >= UIScreen.main.bounds.height * 2 - 100 {
                        Detailtabbar()
                            .padding(EdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 16))
                            .background(Color.white)
                            .frame(height: 30)
                    }
                }
                .background(Color.backgroundColour)
                .navigationTitle("detail")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarBackButtonHidden(true)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            HStack {
                                Image(systemName: "chevron.left")
                                    .resizable()
                                    .frame(width: 10, height: 20)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    ToolbarItem(placement: .principal) {
                        Image("logoImage") // Replace with your image
                            .resizable()
                            .frame(width: 80, height: 50)
                    }
                }
            }
        }
        .padding(EdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 16))
        .background(Color.backgroundColour)
    }
}

struct ViewOffsetKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

// Dummy Views for the example
struct CategoriesDetail: View {
    var body: some View {
        Text("Categories Detail View")
            .frame(height: 300)
            .background(Color.gray)
    }
}

struct PromotionAccessories: View {
    var body: some View {
        Text("Promotion Accessories View")
            .frame(height: 300)
            .background(Color.blue)
    }
}

struct ProductDetail: View {
    var body: some View {
        Text("Product Detail View")
            .frame(height: 300)
            .background(Color.green)
    }
}

struct ToSeeOtherProduct: View {
    var body: some View {
        Text("To See Other Product View")
            .frame(height: 300)
            .background(Color.yellow)
    }
}

struct AllProduct: View {
    var body: some View {
        Text("All Product View")
            .frame(height: 300)
            .background(Color.purple)
    }
}

struct DetailtabbarView: View {
    var body: some View {
        HStack {
            Text("Detail Tab Bar")
                .font(.system(size: 12))
                .foregroundColor(.black)
        }
        .padding()
        .background(Color.yellow)
        .cornerRadius(18)
    }
}

#Preview {
    DetailScreen()
}

