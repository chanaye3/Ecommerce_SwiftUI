//
//  example1.swift
//  KyarLay
//
//  Created by Mg Chan on 5/22/24.
//

import Foundation
import SwiftUI

struct example1: View {
    @State private var selectedTab = 0
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            // Content of the selected tab
            switch selectedTab {
            case 0:
                Text("Home")
            case 1:
                Text("Search")
            case 2:
                Text("Profile")
            default:
                Text("Home")
            }
            
            Spacer()
            
            // Custom tab bar
            HStack {
                VStack{
                    Divider()
                        .padding(.top,28) // Adjust height as needed
                        .foregroundColor(.black)
                    TabBarButton(selectedTab: $selectedTab, tabIndex: 0, icon: "house", title: "Home")
                    
                    
                    
                }
               
                TabBarButton(selectedTab: $selectedTab, tabIndex: 1, icon: "magnifyingglass", title: "Search")
                
                Divider().frame(height: 44) // Adjust height as needed
                
                TabBarButton(selectedTab: $selectedTab, tabIndex: 2, icon: "person", title: "Profile")
            }
            .frame(height: 50)
            .background(Color(UIColor.systemGray6))
        }
    }
}

struct TabBarButton: View {
    @Binding var selectedTab: Int
    let tabIndex: Int
    let icon: String
    let title: String
    
    var body: some View {
        Button(action: {
            selectedTab = tabIndex
        }) {
            VStack {
                Image(systemName: icon)
                    .font(.system(size: 20))
                Text(title)
                    .font(.footnote)
            }
            .padding()
            .foregroundColor(selectedTab == tabIndex ? .yellow : .gray)
        }
        .frame(maxWidth: .infinity)
    }
}

struct example1_Previews: PreviewProvider {
    static var previews: some View {
        example1()
    }
}
