//
///  ContentView.swift
//  Shared
//
//  Created by Yuvraj Singh on 07/03/2022.
//

import SwiftUI

enum TaskFilter: String
{
    static var allFilters: [TaskFilter]
    {
        return [.NonCompleted,.Completed,.OverDue,.All]
    }
    
    case All = "All"
    case NonCompleted = "To Do"
    case Completed = "Completed"
    case OverDue = "Overdue"
}
