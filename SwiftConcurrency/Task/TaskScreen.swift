//
//  TaskScreen.swift
//  SwiftConcurrency
//
//  Created by Azharuddin 1 on 01/01/25.
//


import SwiftUI

struct TaskScreen: View {
    @StateObject private var taskManager = TaskManager()
    var body: some View {
        Button("Start") {
            taskManager.startTask()
        }
        Button("Stop") {
            taskManager.cancelTask()
        }
    }
}

#Preview {
    TaskScreen()
}
