//
//  animationView.swift
//  KyarLay
//
//  Created by Mg Chan on 5/26/24.
//

import Foundation
import SwiftUI

struct PhotoCarouselView: View {
    
    let photos: [String] // Array of photo names or URLs
    @State private var currentIndex = 0
    private let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
//    init(){
//        UIPageControl.appearance().pageIndicatorTintColor = .gray
//        UIPageControl.appearance().currentPageIndicatorTintColor = .yellow
//    }
    var body: some View {
        ZStack {
            TabView {
                ForEach(0..<photos.count, id: \.self) { index in
                    if index == currentIndex {
                        Image(photos[index])
                            .resizable()
                            .scaledToFill()
                            
                            .frame(width: UIScreen.main.bounds.width, height: 250)
                            .clipped()
                            .transition(.opacity)
                            .animation(.easeInOut(duration: 0), value: currentIndex)

                    }
                }
            }.tabViewStyle(.page)
            .frame(height: 250)
            
            ForEach(0..<photos.count, id: \.self) { index in
                if index == currentIndex {
                    Image(photos[index])
                        .resizable()
                        .scaledToFill()
                        
                        .frame(width: UIScreen.main.bounds.width, height: 250)
                        .clipped()
                        .transition(.opacity)
                        .animation(.easeInOut(duration: 0), value: currentIndex)

                }
            }
        }
        .onReceive(timer) { _ in
            withAnimation {
                currentIndex = (currentIndex + 1) % photos.count
            }
            
        }
    }
}

struct animationnView: View {
    let photos = ["image1", "image2", "image3", "image4"] // Replace with your photo names or URLs
    
    var body: some View {
        VStack {
            Text("Photo Carousel")
                .font(.largeTitle)
                .padding()
            
            PhotoCarouselView(photos: photos)
                .frame(width: 200, height: 200)
                
        }
    }
}

struct animationnView_Previews: PreviewProvider {
    static var previews: some View {
        animationnView()
    }
}
