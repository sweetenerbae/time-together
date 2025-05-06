import SwiftUI

struct OnboardingContainerView: View {
    @StateObject private var viewModel = OnboardingViewModel()
    var onFinish: () -> Void

    var body: some View {
        VStack(spacing: 0) {
            OnboardingPageIndicator(totalPages: 4, currentPage: viewModel.currentPage)
                .padding(.top, 50)

            TabView(selection: $viewModel.currentPage) {
                OnboardingWelcomeView(onNext: viewModel.nextStep)
                    .tag(0)
                OnboardingPointsView(onNext: viewModel.nextStep)
                    .tag(1)
                OnboardingEmailInputView(
                    email: $viewModel.email,
                    isNextEnabled: viewModel.isNextButtonEnabled,
                    onNext: viewModel.nextStep,
                    onBack: viewModel.backStep,
                    onSkip: viewModel.nextStep
                )
                    .tag(2)
                OnboardingNameInputView(onNext: viewModel.nextStep)
                    .tag(3)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never)) // отключаем стандартные точки
        }
        .background(Color("whiteAsset"))
        .ignoresSafeArea()
    }
}
