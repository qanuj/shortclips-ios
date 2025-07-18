import SwiftUI

struct EnhancedContentView: View {
    @EnvironmentObject var authManager: AuthManager
    @EnvironmentObject var subscriptionManager: SubscriptionManager
    @State private var showDemoInfo = false
    
    var body: some View {
        Group {
            if authManager.isAuthenticated {
                if subscriptionManager.hasActiveSubscription {
                    MainTabView()
                } else {
                    PaywallView()
                }
            } else {
                ZStack {
                    LoginView()
                    
                    VStack {
                        HStack {
                            Spacer()
                            Button(action: {
                                showDemoInfo = true
                            }) {
                                Image(systemName: "info.circle")
                                    .font(.title2)
                                    .foregroundColor(.purple)
                                    .padding()
                            }
                        }
                        Spacer()
                    }
                }
            }
        }
        .onAppear {
            authManager.checkAuthStatus()
            subscriptionManager.checkSubscriptionStatus()
        }
        .sheet(isPresented: $showDemoInfo) {
            DemoInfoView(isPresented: $showDemoInfo)
        }
    }
}