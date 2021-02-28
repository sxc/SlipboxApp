//
//  SlipboxPadApp.swift
//  SlipboxPad
//
//  Created by Xiaochun Shen on 2021/2/28.
//

import SwiftUI

@main
struct SlipboxPadApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
