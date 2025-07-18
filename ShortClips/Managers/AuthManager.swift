import Foundation
import SwiftUI

class AuthManager: ObservableObject {
    @Published var isAuthenticated = false
    @Published var currentUser: User?
    
    func checkAuthStatus() {
        // Check if user is already authenticated
        if UserDefaults.standard.bool(forKey: "is_authenticated") {
            isAuthenticated = true
            currentUser = SampleDataProvider.shared.getSampleUser()
        }
    }
    
    func loginWithSampleData(phoneNumber: String) {
        // Store authentication state
        UserDefaults.standard.set(true, forKey: "is_authenticated")
        UserDefaults.standard.set(phoneNumber, forKey: "user_phone")
        
        // Set user data
        var user = SampleDataProvider.shared.getSampleUser()
        // Update phone number with the one entered
        user = User(
            id: user.id,
            phoneNumber: phoneNumber,
            name: user.name,
            email: user.email,
            profilePicture: user.profilePicture,
            isActive: user.isActive,
            createdAt: user.createdAt,
            updatedAt: user.updatedAt
        )
        
        currentUser = user
        isAuthenticated = true
    }
    
    func logout() {
        UserDefaults.standard.removeObject(forKey: "is_authenticated")
        UserDefaults.standard.removeObject(forKey: "user_phone")
        UserDefaults.standard.removeObject(forKey: "has_subscription")
        isAuthenticated = false
        currentUser = nil
    }
}