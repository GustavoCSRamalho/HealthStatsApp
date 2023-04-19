//
//  Activity.swift
//  HealthStatsApp
//
//  Created by Gustavo Ramalho on 14/04/23.
//

import Foundation

struct Activity : Identifiable {
    var id: String
    var name: String
    var image: String
    
    static func allActivities () -> [Activity] {
        return [
            Activity(id: "activiEnergyBurned", name: "Active Burned Calories", image: "⚡️"),
            Activity(id: "appleExerciseTime", name: "Exercise Time", image: "🏋️‍♂️"),
            Activity(id: "appleStandTime", name: "Stand time", image: "🧍‍♂️"),
            Activity(id: "distanceWalkingRunning", name: "Distance Walking/Running", image: "🏃‍♂️"),
            Activity(id: "stepCount", name: "Step Count", image: "👣"),
        ]
    }
}
