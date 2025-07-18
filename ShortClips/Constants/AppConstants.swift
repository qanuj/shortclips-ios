import Foundation

// MARK: - App Environment
enum AppEnvironment {
    case development
    case staging
    case production
}

// MARK: - Configuration
struct Config {
    static let current: AppEnvironment = .development
    
    static var apiBaseURL: String {
        switch current {
        case .development:
            return "https://dev-api.yourapp.com"
        case .staging:
            return "https://staging-api.yourapp.com"
        case .production:
            return "https://api.yourapp.com"
        }
    }
}

// MARK: - API Constants
struct APIConstants {
    static let baseURL = "https://your-api-url.com/api"
    static let stripePublishableKey = "pk_test_your_stripe_key"
}

// MARK: - App Constants
struct AppConstants {
    static let appVersion = "1.0.0"
    static let privacyPolicyURL = "https://yourwebsite.com/privacy"
    static let termsOfServiceURL = "https://yourwebsite.com/terms"
}