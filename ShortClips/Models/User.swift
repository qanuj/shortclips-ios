import Foundation

struct User: Codable {
    let id: String
    var phoneNumber: String
    let name: String?
    let email: String?
    let profilePicture: String?
    let isActive: Bool
    let createdAt: String
    let updatedAt: String
}