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
    init(photos : [String]){
        self.photos = photos
        let pageControl = UIPageControl.appearance()
        UIPageControl.appearance().pageIndicatorTintColor = .gray// Set the default page indicator color

        UIPageControl.appearance().currentPageIndicatorTintColor = .yellow // Set the current page indicator color
        pageControl.backgroundStyle = .prominent// Optionally set the background style for better visibility
    }
    
    var body: some View {
        
            
        
               
        TabView(selection : $currentIndex) {
            ForEach(0..<photos.count , id: \.self) { index in
                                
                ZStack(alignment : .bottom){
                    Image(photos[index])
                        .resizable()
                        .scaledToFill()
                    
                        .frame(width: UIScreen.main.bounds.width, height: 320)
                        .clipped()
                        .tag(index)
                        .edgesIgnoringSafeArea(.all)
                    CustomPageControl(numberOfPages: photos.count, currentPage: $currentIndex)
                }.background(Color.white)
                                        
                                
                       
            }
            
        }.frame(width: UIScreen.main.bounds.width,height: 320)
//        .tabViewStyle(.page)
//            .frame(width: UIScreen.main.bounds.width,height: 250)
            .onReceive(timer) { _ in
                        withAnimation {
                            currentIndex = (currentIndex + 1) % photos.count
                        }
                    }
       
                        
                    
           
    }
}

struct animationnView: View {
    var photos = ["image1", "image2", "image3", "image4"] // Replace with your photo names or URLs
   
    var body: some View {
        VStack {
            
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
struct CustomPageControl: View {
    var numberOfPages: Int
    @Binding var currentPage: Int
    
    var body: some View {
        HStack(spacing: 10) {
            ForEach(0..<numberOfPages, id: \.self) { index in
                Circle()
                    .fill(index == currentPage ? Color.yellow : Color.gray)
                    .frame(width: 12, height: 12)
            }
        }
        .padding(15)
    }
}
