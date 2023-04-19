//
//  HealthStep.swift
//  HealthStatsApp
//
//  Created by Gustavo Ramalho on 17/04/23.
//

import Foundation
import HealthKit

struct HealthStat: Identifiable {
    let id = UUID()
    let stat: HKQuantity?
    let date: Date
}
