//
//  HidingTabBarcontroller.swift
//  KyarLay
//
//  Created by Mg Chan on 5/26/24.
//

import Foundation
import SwiftUI

class HidingTabBarController: UIViewController {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.hidesBottomBarWhenPushed = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.hidesBottomBarWhenPushed = false
    }
}
