import SwiftUI

struct OnboardingContainerView: View {
    @StateObject private var viewModel = OnboardingViewModel()
    var onFinish: () -> Void

    var body: some View {
        VStack {
            Spacer()
            Group {
                switch viewModel.currentPage {
                case 0:
                    OnboardingWelcomeView(onNext: { viewModel.nextStep() })
                case 1:
                    OnboardingPointsView()
                case 2:
                    OnboardingEmailInputView(
                        email: $viewModel.email,
                        isNextEnabled: viewModel.isNextButtonEnabled,
                        onNext: { viewModel.nextStep() },
                        onBack: { viewModel.backStep() },
                        onSkip: { viewModel.nextStep() }
                    )
                case 3:
                    OnboardingNameInputView(
                        onFinish: {
                            onFinish()
                        }
                    )
                default:
                    EmptyView()
                }
            }
        }
    }
}
