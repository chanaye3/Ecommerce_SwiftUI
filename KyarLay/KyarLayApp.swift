//
//  KyarLayApp.swift
//  KyarLay
//
//  Created by Mg Chan on 4/25/24.
//

import SwiftUI

@main
struct KyarLayApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomeScreen(stepperValue: .constant(1))
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
