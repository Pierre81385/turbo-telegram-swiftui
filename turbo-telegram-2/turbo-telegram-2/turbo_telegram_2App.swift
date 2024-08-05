//
//  turbo_telegram_2App.swift
//  turbo-telegram-2
//
//  Created by m1_air on 8/4/24.
//

import SwiftUI
import SwiftData

@main
struct turbo_telegram_2App: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
            Employee.self
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            EmployeeList()
        }
        .modelContainer(sharedModelContainer)
    }
}
