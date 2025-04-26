import SwiftUI

struct OnboardingWelcomeView: View {
    let onNext: () -> Void
    
    var body: some View {
        Spacer()
        
        VStack(spacing: 0) {
            OnboardingPageIndicator(totalPages: 4, currentPage: 0)
            
            Spacer()
            
            Image("WelcomePng")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .padding(.vertical, 40)
            
            // MARK: - Title & Description
            VStack(alignment: .leading, spacing: 8) {
                Text("Время Вместе")
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
            OnboardingActionButton(title: "Далее", action: onNext)
                .padding(.bottom, 30)
        }
        .background(Color.white)
        .edgesIgnoringSafeArea(.bottom)
        Spacer()
    }
}

#Preview {
    OnboardingWelcomeView(
        onNext: {}
    )
}
