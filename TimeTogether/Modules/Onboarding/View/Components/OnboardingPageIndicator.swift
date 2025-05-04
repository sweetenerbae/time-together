import SwiftUI

struct OnboardingPageIndicator: View {
    let totalPages: Int
    let currentPage: Int

    var body: some View {
        HStack(spacing: 4) {
            ForEach(0..<totalPages, id: \.self) { index in
                Capsule()
                    .fill(index <= currentPage ? Color.primaryPurple : Color.backgroundGray)
                    .frame(maxWidth: .infinity) // каждый Capsule тянется
                    .frame(height: 8)
                    .animation(.easeInOut(duration: 0.3), value: currentPage)
            }
        }
        .padding(.horizontal, 20)
        .padding(.top, 20)
    }
}
