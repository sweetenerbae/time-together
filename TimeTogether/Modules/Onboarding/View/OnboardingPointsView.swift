import SwiftUI

struct OnboardingPointsView: View {
    let onNext: () -> Void

    var body: some View {
        VStack(spacing: 0) {
            Spacer()

            OnboardingPageIndicator(totalPages: 4, currentPage: 1)
            
            Spacer()
            
            OnboardingActionButton(title: "Пропустить", action: onNext, backgroundColor: Color.primaryPurple, foregroundColor: Color.white)
                .padding(.horizontal)
                .padding(.bottom, 60)
        }
        .background(Color.white)
        .ignoresSafeArea()
    }
}

#Preview {
    OnboardingPointsView(onNext: {} )
}
