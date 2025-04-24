import SwiftUI

struct OnboardingActionButton: View {
    let title: String
    let action: () -> Void
    var isEnabled: Bool = true

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: 16))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(isEnabled ? Color.primaryPurple : Color.gray)
                .cornerRadius(16)
        }
        .disabled(!isEnabled)
        .padding(.horizontal)
    }
}
