//
//  ContentView.swift
//  Shared
//
//  Created by Yuvraj Singh on 07/03/2022.
//

import SwiftUI

@main
struct TodoListAppTutorialApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            
            let context = persistenceController.container.viewContext
            let dateHolder = DateHolder(context)
            
            TaskListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(dateHolder)
        }
    }
}
