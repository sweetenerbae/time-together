import SwiftUI

struct AppCoordinatorView: View {
    @AppStorage("hasCompletedOnboarding") private var hasCompletedOnboarding = false

    var body: some View {
        if hasCompletedOnboarding {
            MainTabView()
        } else {
            OnboardingContainerView(onFinish: {
                self.hasCompletedOnboarding = true
            })
        }
    }
}
