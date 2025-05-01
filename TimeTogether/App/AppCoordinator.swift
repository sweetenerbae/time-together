import SwiftUI

final class AppCoordinator {
    
    @AppStorage("hasCompletedOnboarding") private var hasCompletedOnboarding = false
    
    func start() -> some View {
        if !hasCompletedOnboarding {
            return AnyView(
                OnboardingContainerView(onFinish: {
                    self.hasCompletedOnboarding = true
                })
            )
        } else {
            return AnyView(
                Text("Заглушка")
                    .font(.system(size: 28))
                    .foregroundStyle(Color.red)
            )
        }
    }
}
