import SwiftUI

struct OnboardingWelcomeView: View {
    let onNext: () -> Void
    
    var body: some View {
        VStack(spacing: 0) {
            VStack(alignment: .center) {
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
            }
            .padding(.bottom, 30)
            .padding(.top, 40)
            
            Spacer()
            
            // MARK: - Next Button
            OnboardingActionButton(title: "Далее",
                                   action: onNext,
                                   backgroundColor: Color.primaryPurple,
                                   foregroundColor: Color("white"))
                .padding(.horizontal, 20)
                .padding(.bottom, 30)
        }
        .background(Color("white"))
    }
}

#Preview {
    OnboardingWelcomeView(
        onNext: {}
    )
}
