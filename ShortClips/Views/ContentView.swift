import SwiftUI

struct ContentView: View {
    @EnvironmentObject var authManager: AuthManager
    @EnvironmentObject var subscriptionManager: SubscriptionManager
    
    var body: some View {
        Group {
            if authManager.isAuthenticated {
                if subscriptionManager.hasActiveSubscription {
                    MainTabView()
                } else {
                    PaywallView()
                }
            } else {
                LoginView()
            }
        }
        .onAppear {
            authManager.checkAuthStatus()
            subscriptionManager.checkSubscriptionStatus()
        }
    }
}