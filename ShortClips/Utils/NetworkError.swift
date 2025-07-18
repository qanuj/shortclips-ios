import Foundation

enum NetworkError: LocalizedError {
    case invalidURL
    case noData
    case decodingError
    case serverError(Int)
    case unauthorized
    case networkUnavailable
    
    var errorDescription: String? {
        switch self {
        case .invalidURL:
            return "Invalid URL"
        case .noData:
            return "No data received"
        case .decodingError:
            return "Failed to decode response"
        case .serverError(let code):
            return "Server error: \(code)"
        case .unauthorized:
            return "Unauthorized access"
        case .networkUnavailable:
            return "Network unavailable"
        }
    }
}