import SwiftUI

struct OnboardingPageIndicator: View {
    let totalPages: Int
    let currentPage: Int

    var body: some View {
        HStack(spacing: 4) {
            ForEach(0..<totalPages, id: \.self) { index in
                Capsule()
                    .fill(index == currentPage ? Color.primaryPurple : Color.backgroundGray)
                    .frame(maxWidth: .infinity) // каждый Capsule тянется
                    .frame(height: 8)
//                        .scaleEffect(x: index == currentPage ? 2.0 : 1.0, y: 1.0, anchor: .center) // увеличиваем текущий по ширине
                    .animation(.easeInOut(duration: 0.3), value: currentPage)
            }
        }
        .padding(.horizontal, 20)
        .padding(.top, 20)
    }
}
