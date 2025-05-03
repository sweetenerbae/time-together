import SwiftUI

struct OnboardingWelcomeView: View {
    let onNext: () -> Void
    
    var body: some View {
        VStack(spacing: 0) {
            OnboardingPageIndicator(totalPages: 4, currentPage: 0)
                .padding(.top, 50)
            
            Spacer()
            
            Image("WelcomePng")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .padding(.vertical, 40)
            
            // MARK: - Title & Description
            VStack(alignment: .leading, spacing: 8) {
                Text("Время вместе")
                    .font(.system(size: 28, weight: .bold))
                    .fontWeight(.bold)
                    .foregroundStyle(Color.labelBlack)
                
                Text("Это платформа, которая сближает семью, наполняя жизнь теплом и радостью через увлекательные задачи и активности")
                    .font(.system(size: 18, weight: .regular))
                    .foregroundStyle(Color.labelBlack)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 20)
            
            Spacer()
            
            // MARK: - Next Button
            OnboardingActionButton(title: "Далее", action: onNext, backgroundColor: Color.primaryPurple, foregroundColor: Color.white)
                .padding(.horizontal)
                .padding(.bottom, 60)
        }
        .background(Color.white)
        .ignoresSafeArea()
    }
}

#Preview {
    OnboardingWelcomeView(
        onNext: {}
    )
}
