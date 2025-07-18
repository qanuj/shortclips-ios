import Foundation
import SwiftUI

class SubscriptionManager: ObservableObject {
    @Published var hasActiveSubscription = false
    @Published var subscriptionEndDate: Date?
    @Published var currentPlan: SubscriptionPlan = .monthly
    
    func checkSubscriptionStatus() {
        hasActiveSubscription = UserDefaults.standard.bool(forKey: "has_subscription")
        if hasActiveSubscription {
            // Set subscription end date to 30 days from now for demo
            subscriptionEndDate = Calendar.current.date(byAdding: .day, value: 30, to: Date())
        }
    }
    
    func activateSubscription(plan: SubscriptionPlan) {
        UserDefaults.standard.set(true, forKey: "has_subscription")
        currentPlan = plan
        hasActiveSubscription = true
        
        // Set subscription end date based on plan
        let days = plan == .monthly ? 30 : 365
        subscriptionEndDate = Calendar.current.date(byAdding: .day, value: days, to: Date())
    }
}