# ShortClips iOS App - Development Instructions

## Project Overview
ShortClips is a SwiftUI-based iOS application for streaming short-form video content, similar to TikTok or YouTube Shorts. The app features user authentication, subscription management, and video content delivery.

## Architecture & Tech Stack

### Technology Stack
- **Framework**: SwiftUI (iOS 14+)
- **Language**: Swift 5.0+
- **Architecture**: MVVM (Model-View-ViewModel)
- **State Management**: ObservableObject, @Published, @StateObject
- **Dependency Injection**: Environment Objects
- **Data Persistence**: UserDefaults (demo), planned: Core Data/CloudKit
- **Video Playback**: AVPlayer (planned)
- **Authentication**: Phone number + OTP verification
- **Payments**: Stripe integration (planned)

### Project Structure
```
ShortClips/
├── App/
│   └── ShortClipsApp.swift              # App entry point
├── Models/                              # Data models
│   ├── User.swift                       # User data structure
│   ├── Show.swift                       # Show/Series data structure
│   ├── Episode.swift                    # Individual episode data
│   └── SubscriptionPlan.swift           # Subscription types
├── Views/                               # SwiftUI Views organized by feature
│   ├── Authentication/                  # Login, OTP verification
│   ├── Main/                           # Main app content (feeds, player)
│   ├── Profile/                        # User profile, settings
│   ├── Subscription/                   # Paywall, subscription management
│   ├── Video/                          # Video player components
│   └── Shared/                         # Reusable UI components
├── Managers/                           # Business logic layer
│   ├── AuthManager.swift               # Authentication state & logic
│   ├── SubscriptionManager.swift       # Subscription state & logic
│   └── ShowFeedManager.swift           # Content feed management
├── Services/                           # Data services & API calls
│   └── SampleDataProvider.swift        # Demo data provider
└── Utils/                              # Utilities & configuration
    ├── Config.swift                    # Environment configuration
    ├── Constants.swift                 # App constants
    └── NetworkError.swift              # Error handling
```

## Key Features & Use Cases

### 1. Authentication Flow
- **Phone Number Verification**: Users enter phone number → receive OTP → verify
- **Demo Mode**: Any 10-digit number + OTP "123456" for testing
- **Persistent Login**: Authentication state preserved across app launches

### 2. Subscription Management
- **Freemium Model**: Authentication required, subscription needed for content access
- **Paywall**: Users see subscription plans before accessing content
- **Plans**: Monthly and Yearly subscription options
- **Demo Subscription**: Auto-activated after authentication for testing

### 3. Content Delivery
- **Show-Based Structure**: Content organized into Shows → Episodes
- **Video Streaming**: Short-form video content (30 seconds - 5 minutes)
- **Feed Algorithm**: Personalized content discovery
- **Engagement**: Views, likes, sharing capabilities

### 4. User Experience
- **Vertical Video Feed**: TikTok-style scrolling experience
- **Full-Screen Player**: Immersive video viewing
- **Profile Management**: User settings, subscription status, viewing history

## Development Guidelines

### Code Organization
1. **Separation of Concerns**: Models, Views, Business Logic separated
2. **MVVM Pattern**: ViewModels handle business logic, Views handle UI
3. **Environment Objects**: Shared state management across views
4. **Single Responsibility**: Each file/class has one clear purpose

### State Management
- **@StateObject**: For creating observable objects in views
- **@ObservedObject**: For passing observable objects between views
- **@EnvironmentObject**: For app-wide shared state (Auth, Subscription)
- **@State**: For local view state

### Data Flow
```
User Action → View → Manager → Service → Data Source
     ↓
View Updates ← Published Property ← Manager ← API Response
```

### Demo Data Setup
- **Sample Videos**: Uses public video URLs for testing
- **Mock Authentication**: Phone + OTP verification without real backend
- **Local Persistence**: UserDefaults for demo authentication state
- **Sample Content**: 5 shows with multiple episodes each

## Environment Configuration

### Development Setup
- **Base URL**: `https://dev-api.yourapp.com`
- **Demo Mode**: Always enabled in development
- **Sample Data**: Automatically loaded
- **Debug Logging**: Enabled

### Production Considerations
- **API Integration**: Replace SampleDataProvider with real API calls
- **Video CDN**: Implement proper video streaming service
- **Analytics**: Add user behavior tracking
- **Crash Reporting**: Implement crash analytics
- **Performance**: Optimize video loading and caching

## Key Implementation Notes

### Authentication Manager
- Handles login/logout state
- Manages user session persistence
- Provides current user information

### Subscription Manager
- Tracks subscription status
- Handles subscription activation
- Manages subscription expiry

### Content Management
- Loads and caches show data
- Handles content refresh
- Manages video streaming states

## Testing Strategy

### Demo Mode Features
1. **Authentication**: Test with any phone number + OTP "123456"
2. **Subscription**: Auto-activated after login
3. **Content**: Sample shows with working video URLs
4. **Navigation**: Full app flow available

### Test Scenarios
- Login → Subscription Check → Content Access
- Logout → Login Again → State Restoration
- Subscription Expiry → Paywall Display
- Content Loading → Video Playback

## Future Enhancements

### Planned Features
1. **Real-time Video Streaming**: Implement proper video CDN
2. **Social Features**: Comments, shares, user interactions
3. **Content Creation**: User-generated content upload
4. **Personalization**: AI-driven content recommendations
5. **Offline Viewing**: Download content for offline access
6. **Live Streaming**: Real-time video broadcasting

### Technical Improvements
1. **Core Data**: Replace UserDefaults with proper data persistence
2. **CloudKit**: Sync user data across devices
3. **Push Notifications**: Content updates, engagement notifications
4. **Deep Linking**: Direct content access via URLs
5. **Performance Optimization**: Video preloading, smooth scrolling

## Deployment Checklist

### Before Production
- [ ] Replace demo authentication with real API
- [ ] Implement proper video streaming
- [ ] Add Stripe payment integration
- [ ] Set up analytics and crash reporting
- [ ] Configure push notifications
- [ ] Add privacy policy and terms of service
- [ ] Implement proper error handling
- [ ] Add loading states and offline support
- [ ] Optimize for different device sizes
- [ ] Test on physical devices

### App Store Requirements
- [ ] App privacy labels
- [ ] Content rating
- [ ] App screenshots and metadata
- [ ] Subscription terms and pricing
- [ ] Support contact information