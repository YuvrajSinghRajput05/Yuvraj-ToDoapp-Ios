//
//  ContentView.swift
//  Shared
//
//  Created by Yuvraj Singh on 07/03/2022./

import SwiftUI

struct TaskCell: View
{
    @EnvironmentObject var dateHolder: DateHolder
    @ObservedObject var passedTaskItem: TaskItem
    
    var body: some View
    {
        HStack
        {
            CheckBoxView(passedTaskItem: passedTaskItem)
                .environmentObject(dateHolder)
            
            Text(passedTaskItem.name ?? "")
                .padding(.horizontal)
            
            if !passedTaskItem.isCompleted() && passedTaskItem.scheduleTime
            {
                Spacer()
                Text(passedTaskItem.dueDateTimeOnly())
                    .font(.footnote)
                    .foregroundColor(passedTaskItem.overDueColor())
                    .padding(.horizontal)
            }
        }
    }
}

struct TaskCell_Previews: PreviewProvider {
    static var previews: some View {
        TaskCell(passedTaskItem: TaskItem())
    }
}
