import Foundation

struct Episode: Codable, Identifiable {
    let id: String
    let title: String
    let description: String?
    let episodeNumber: Int
    let videoURL: String
    let thumbnail: String?
    let duration: Int?
    let viewCount: Int
    let likeCount: Int
    let createdAt: String
    let updatedAt: String
}