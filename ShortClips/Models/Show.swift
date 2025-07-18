import Foundation

struct Show: Codable, Identifiable {
    let id: String
    let title: String
    let description: String?
    let tags: [String]
    let thumbnail: String?
    let status: String
    let isFeatured: Bool
    let episodes: [Episode]
    let totalViews: Int
    let totalLikes: Int
    let createdAt: String
    let updatedAt: String
}