//
//  example.swift
//  KyarLay
//
//  Created by Mg Chan on 5/19/24.
//

import Foundation
import SwiftUI

struct CustomTabBarController: UIViewControllerRepresentable {
    let tabBar = UITabBarController()

    func makeUIViewController(context: Context) -> UITabBarController {
        let firstViewController = UIHostingController(rootView:
                                                        Text("first View"))
        firstViewController.tabBarItem = UITabBarItem(
            title: "ဈေး"
                ,
            image: UIImage(systemName: "storefront.fill"),
            tag: 0
        )
        

        let secondViewController = UIHostingController(rootView: Text("Another View"))
        secondViewController.tabBarItem = UITabBarItem(
            title: "Another",
            image: UIImage(systemName: "star.fill"),
            tag: 1
        )

        tabBar.viewControllers = [firstViewController, secondViewController]

        // Set the selected tab bar item color to yellow
        UITabBar.appearance().tintColor = UIColor.systemYellow

        return tabBar
    }

    func updateUIViewController(_ uiViewController: UITabBarController, context: Context) {}
}

struct CustomTabBarController_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBarController()
    }
}

