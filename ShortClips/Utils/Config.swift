import Foundation

enum AppEnvironment {
    case development
    case staging
    case production
}

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