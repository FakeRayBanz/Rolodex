//
//  RolodexApp.swift
//  Rolodex
//
//  Created by Matthew Parker on 13/8/2022.
//

import SwiftUI

@main
struct RolodexApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
