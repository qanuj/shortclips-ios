import Foundation

class SampleDataProvider {
    static let shared = SampleDataProvider()
    
    private init() {}
    
    // Sample video URLs (using Apple's sample videos)
    private let sampleVideoURLs = [
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4"
    ]
    
    func getSampleShows() -> [Show] {
        return [
            Show(
                id: "1",
                title: "Comedy Sketches",
                description: "Hilarious short comedy sketches",
                tags: ["comedy", "funny", "entertainment"],
                thumbnail: "https://picsum.photos/300/400?random=1",
                status: "PUBLISHED",
                isFeatured: true,
                episodes: [
                    Episode(
                        id: "1-1",
                        title: "The Office Prank",
                        description: "A funny office prank gone wrong",
                        episodeNumber: 1,
                        videoURL: sampleVideoURLs[0],
                        thumbnail: "https://picsum.photos/300/400?random=11",
                        duration: 180,
                        viewCount: 1250,
                        likeCount: 95,
                        createdAt: "2024-01-15",
                        updatedAt: "2024-01-15"
                    ),
                    Episode(
                        id: "1-2",
                        title: "Coffee Shop Blues",
                        description: "When ordering coffee gets complicated",
                        episodeNumber: 2,
                        videoURL: sampleVideoURLs[1],
                        thumbnail: "https://picsum.photos/300/400?random=12",
                        duration: 155,
                        viewCount: 980,
                        likeCount: 78,
                        createdAt: "2024-01-16",
                        updatedAt: "2024-01-16"
                    ),
                    Episode(
                        id: "1-3",
                        title: "Elevator Awkwardness",
                        description: "The most awkward elevator ride ever",
                        episodeNumber: 3,
                        videoURL: sampleVideoURLs[2],
                        thumbnail: "https://picsum.photos/300/400?random=13",
                        duration: 200,
                        viewCount: 1420,
                        likeCount: 112,
                        createdAt: "2024-01-17",
                        updatedAt: "2024-01-17"
                    )
                ],
                totalViews: 3650,
                totalLikes: 285,
                createdAt: "2024-01-15",
                updatedAt: "2024-01-17"
            ),
            Show(
                id: "2",
                title: "Tech Tips",
                description: "Quick tech tips and tricks",
                tags: ["tech", "tips", "tutorial"],
                thumbnail: "https://picsum.photos/300/400?random=2",
                status: "PUBLISHED",
                isFeatured: false,
                episodes: [
                    Episode(
                        id: "2-1",
                        title: "iPhone Hidden Features",
                        description: "Secret iPhone features you didn't know",
                        episodeNumber: 1,
                        videoURL: sampleVideoURLs[3],
                        thumbnail: "https://picsum.photos/300/400?random=21",
                        duration: 240,
                        viewCount: 2100,
                        likeCount: 150,
                        createdAt: "2024-01-18",
                        updatedAt: "2024-01-18"
                    ),
                    Episode(
                        id: "2-2",
                        title: "Mac Productivity Hacks",
                        description: "Boost your Mac productivity",
                        episodeNumber: 2,
                        videoURL: sampleVideoURLs[4],
                        thumbnail: "https://picsum.photos/300/400?random=22",
                        duration: 190,
                        viewCount: 1850,
                        likeCount: 132,
                        createdAt: "2024-01-19",
                        updatedAt: "2024-01-19"
                    )
                ],
                totalViews: 3950,
                totalLikes: 282,
                createdAt: "2024-01-18",
                updatedAt: "2024-01-19"
            ),
            Show(
                id: "3",
                title: "Cooking Quick Bites",
                description: "Fast and easy recipes",
                tags: ["cooking", "food", "recipe"],
                thumbnail: "https://picsum.photos/300/400?random=3",
                status: "PUBLISHED",
                isFeatured: true,
                episodes: [
                    Episode(
                        id: "3-1",
                        title: "5-Minute Pasta",
                        description: "Delicious pasta in just 5 minutes",
                        episodeNumber: 1,
                        videoURL: sampleVideoURLs[0],
                        thumbnail: "https://picsum.photos/300/400?random=31",
                        duration: 300,
                        viewCount: 3200,
                        likeCount: 245,
                        createdAt: "2024-01-20",
                        updatedAt: "2024-01-20"
                    )
                ],
                totalViews: 3200,
                totalLikes: 245,
                createdAt: "2024-01-20",
                updatedAt: "2024-01-20"
            ),
            Show(
                id: "4",
                title: "Travel Diaries",
                description: "Quick travel vlogs",
                tags: ["travel", "adventure", "vlog"],
                thumbnail: "https://picsum.photos/300/400?random=4",
                status: "PUBLISHED",
                isFeatured: false,
                episodes: [
                    Episode(
                        id: "4-1",
                        title: "Tokyo Street Food",
                        description: "Best street food in Tokyo",
                        episodeNumber: 1,
                        videoURL: sampleVideoURLs[1],
                        thumbnail: "https://picsum.photos/300/400?random=41",
                        duration: 280,
                        viewCount: 1890,
                        likeCount: 156,
                        createdAt: "2024-01-21",
                        updatedAt: "2024-01-21"
                    ),
                    Episode(
                        id: "4-2",
                        title: "Paris Hidden Gems",
                        description: "Secret spots in Paris",
                        episodeNumber: 2,
                        videoURL: sampleVideoURLs[2],
                        thumbnail: "https://picsum.photos/300/400?random=42",
                        duration: 250,
                        viewCount: 2100,
                        likeCount: 178,
                        createdAt: "2024-01-22",
                        updatedAt: "2024-01-22"
                    ),
                    Episode(
                        id: "4-3",
                        title: "Bali Sunset Views",
                        description: "Most beautiful sunsets in Bali",
                        episodeNumber: 3,
                        videoURL: sampleVideoURLs[3],
                        thumbnail: "https://picsum.photos/300/400?random=43",
                        duration: 220,
                        viewCount: 2450,
                        likeCount: 189,
                        createdAt: "2024-01-23",
                        updatedAt: "2024-01-23"
                    )
                ],
                totalViews: 6440,
                totalLikes: 523,
                createdAt: "2024-01-21",
                updatedAt: "2024-01-23"
            ),
            Show(
                id: "5",
                title: "Fitness Challenges",
                description: "Quick workout challenges",
                tags: ["fitness", "workout", "health"],
                thumbnail: "https://picsum.photos/300/400?random=5",
                status: "PUBLISHED",
                isFeatured: true,
                episodes: [
                    Episode(
                        id: "5-1",
                        title: "30-Second Plank Challenge",
                        description: "Can you hold a plank for 30 seconds?",
                        episodeNumber: 1,
                        videoURL: sampleVideoURLs[4],
                        thumbnail: "https://picsum.photos/300/400?random=51",
                        duration: 90,
                        viewCount: 1650,
                        likeCount: 134,
                        createdAt: "2024-01-24",
                        updatedAt: "2024-01-24"
                    ),
                    Episode(
                        id: "5-2",
                        title: "Quick Morning Stretch",
                        description: "Wake up your body with this stretch",
                        episodeNumber: 2,
                        videoURL: sampleVideoURLs[0],
                        thumbnail: "https://picsum.photos/300/400?random=52",
                        duration: 120,
                        viewCount: 1820,
                        likeCount: 145,
                        createdAt: "2024-01-25",
                        updatedAt: "2024-01-25"
                    )
                ],
                totalViews: 3470,
                totalLikes: 279,
                createdAt: "2024-01-24",
                updatedAt: "2024-01-25"
            )
        ]
    }
    
    func getSampleUser() -> User {
        return User(
            id: "user123",
            phoneNumber: "+919876543210",
            name: "Demo User",
            email: "demo@example.com",
            profilePicture: "https://picsum.photos/150/150?random=user",
            isActive: true,
            createdAt: "2024-01-01",
            updatedAt: "2024-01-15"
        )
    }
}