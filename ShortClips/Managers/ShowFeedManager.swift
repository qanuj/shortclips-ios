import Foundation
import SwiftUI

class ShowFeedManager: ObservableObject {
    @Published var shows: [Show] = []
    @Published var isLoading = false
    @Published var hasError = false
    
    func loadShows() {
        guard !isLoading else { return }
        
        isLoading = true
        hasError = false
        
        // Simulate API loading time
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.shows = SampleDataProvider.shared.getSampleShows()
            self.isLoading = false
        }
    }
    
    func refreshShows() {
        shows.removeAll()
        loadShows()
    }
}