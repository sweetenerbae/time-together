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
                VStack(spacing: 16) {
                    Text("Заглушка")
                        .font(.system(size: 28))
                        .foregroundStyle(Color.red)
                                    
                    Button("Сбросить онбординг") {
                        self.hasCompletedOnboarding = false
                    }
                    .foregroundColor(.blue)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(12)
                }
            )
        }
    }
}

