import SwiftUI

final class AppCoordinator {

    // MARK: - Properties

    @AppStorage("hasCompletedOnboarding") private var hasCompletedOnboarding = false
    
    // MARK: - Start

    func start() -> some View {
        if !hasCompletedOnboarding {
            return AnyView(OnboardingWelcomeView(onNext: {}))
        } else {
            return AnyView(Text ("Заглушка")
                .font(.system(size: 28))
                .foregroundStyle(Color.red)
            )
        }
    }
}
