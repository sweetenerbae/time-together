import SwiftUI

struct AppCoordinatorView: View {
    @AppStorage("hasCompletedOnboarding") private var hasCompletedOnboarding = false
    @AppStorage("hasSelectedInterests") private var hasSelectedInterests = false
    
    var body: some View {
        if !hasCompletedOnboarding {
            OnboardingContainerView(onFinish: {
                self.hasCompletedOnboarding = true
            })
        } else if !hasSelectedInterests {
            InterestSelectionView(onFinish: {
                self.hasSelectedInterests = true
            })
        } else {
            MainTabView()
        }
    }
}
