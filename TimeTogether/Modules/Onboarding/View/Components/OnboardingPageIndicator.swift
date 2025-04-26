import SwiftUI

struct OnboardingPageIndicator: View {
    let totalPages: Int
    let currentPage: Int

    var body: some View {
        HStack(spacing: 8) {
            ForEach(0..<totalPages, id: \.self) { index in
                Capsule()
                    .fill(index == currentPage ? Color.primaryPurple : Color.backgroundGray)
                    .frame(height: 8)
                    .scaleEffect(index == currentPage ? 1.2 : 1.0)
                    .animation(.easeInOut(duration: 0.2), value: currentPage)
            }
        }
        .padding(.horizontal, 20)
        .padding(.top, 20)
    }
}
