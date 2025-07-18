import SwiftUI

@main
struct ShortClipsApp: App {
    @StateObject private var authManager = AuthManager()
    @StateObject private var subscriptionManager = SubscriptionManager()
    
    var body: some Scene {
        WindowGroup {
            EnhancedContentView()
                .environmentObject(authManager)
                .environmentObject(subscriptionManager)
        }
    }
}
