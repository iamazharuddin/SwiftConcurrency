//
//  TaskManager.swift
//  SwiftConcurrency
//
//  Created by Azharuddin 1 on 01/01/25.
//

/// **By using StateObject  TaskManager is initialized only when the view is first  added to view heirchy**
import Foundation

class TaskManager : ObservableObject  {
    private var task: Task<Void,Never>?
    init() {
        debugPrint("TaskManager init")
    }
    
    deinit {
        cancelTask()
        debugPrint("TaskManager deinit")
    }
    
    func startTask() {
        task = Task(priority: .high) {
            debugPrint("Task in progress")
            try? await Task.sleep(nanoseconds:10_000_000_000)
            guard !Task.isCancelled else { 
                debugPrint("Early return")
                return }
            debugPrint("Task completed successfully.")
        }
    }
    
    func cancelTask() {
        task?.cancel()
         debugPrint("Task cancelled.")
    }
}
