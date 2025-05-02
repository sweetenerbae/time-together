import SwiftUI

struct OnboardingPointsView: View {
    let onNext: () -> Void

    var body: some View {
        Spacer()
        
        VStack(spacing: 0) {
            OnboardingPageIndicator(totalPages: 4, currentPage: 1)
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Hello, world!@*/Text("Hello, world!")/*@END_MENU_TOKEN@*/
            OnboardingActionButton(title: "ddfs", action: onNext)
                .padding(.bottom, 30)
        }
    }
}
