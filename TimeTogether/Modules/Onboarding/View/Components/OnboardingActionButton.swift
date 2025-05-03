import SwiftUI

struct OnboardingActionButton: View {
    var title: String
    var action: () -> Void
    var isEnabled: Bool = true
    var backgroundColor: Color
    var foregroundColor: Color

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: 16))
                .foregroundColor(foregroundColor)
                .frame(height: 56)
                .frame(maxWidth: .infinity)
                .background(backgroundColor)
                .cornerRadius(16)
        }
    }
}
